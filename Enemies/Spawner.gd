extends Node2D

# Variables
var enemy_scene = preload("res://Enemies/Bat.tscn")
export var spawn_interval = 5.0
var spawn_timer = 0.0

func _process(delta):
	spawn_timer += delta
	if spawn_timer >= spawn_interval:
		spawn_enemy()
		spawn_timer = 0.0

func spawn_enemy():
	var enemy_instance = enemy_scene.instance()
	add_child(enemy_instance)
	enemy_instance.position = position + Vector2(rand_range(-100, 100), rand_range(-100, 100))
