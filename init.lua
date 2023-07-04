
if nil == minetest.get_modpath("technic") then 
	minetest.register_node( "geology:granite", {
	    description = "Granite",
	    tiles = { "geology_granite.png" },
	    is_ground_content = true,
	    groups = {cracky=3, stone=1},
	    sounds = default.node_sound_stone_defaults(),
	}) 
	
	minetest.register_node( "geology:marble", {
	    description = "Marble",
	    tiles = { "geology_marble.png" },
	    is_ground_content = true,
	    groups = {cracky=3, stone=1},
	    sounds = default.node_sound_stone_defaults(),
	})
else

	minetest.register_alias("geology:granite", "technic:granite")
	minetest.register_alias("geology:marble", "technic:marble")
end

minetest.register_node( "geology:marble_bricks", {
    description = "Marble Bricks",
    tiles = { "geology_marble_bricks.png" },
    is_ground_content = true,
    groups = {cracky=3, stone=1},
    sounds = default.node_sound_stone_defaults(),
}) 

minetest.register_craft({
    output = 'geology:marble_bricks 4',
    recipe = {
        {'geology:marble','geology:marble'},
        {'geology:marble','geology:marble'}
    }
})


minetest.register_node("geology:basalt", {
  description = "Basalt",
    tiles = {"geology_basalt.png"},
    is_ground_content = true,
  drop = 'geology:basalt_cobble',
    groups = {cracky=3, stone=1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:basalt_cobble", {
  description = "Basalt Cobble",
    tiles = {"geology_basalt_cobble.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:chalk", {
  description = "Chalk",
    tiles = {"geology_chalk.png"},
    is_ground_content = true,
  drop = 'geology:chalk_powder 2',
    groups = {crumbly=2,cracky=2},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:gneiss", {
  description = "Gneiss",
    tiles = {"geology_gneiss.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get cobbles with 1/3 chance
                items = {'geology:gneiss_cobble'},
                rarity = 3,
            },
            {
                items = {'geology:gneiss'},
            }
        }
    },
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:gneiss_cobble", {
  description = "Gneiss Cobble",
    tiles = {"geology_gneiss_cobble.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=2},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:ors", {
  description = "Old Red Sandstone",
    tiles = {"geology_ors.png"},
    is_ground_content = true,
  drop = 'geology:ors_cobble',
    groups = {crumbly=2,cracky=2, stone=1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:ors_cobble", {
  description = "Old Red Sandstone Cobble",
    tiles = {"geology_ors_cobble.png"},
    is_ground_content = true,
    groups = {crumbly=2,cracky=2},
    sounds = default.node_sound_stone_defaults()
})


minetest.register_node("geology:serpentine", {
  description = "Serpentine",
    tiles = {"geology_serpentine.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1},
    sounds = default.node_sound_stone_defaults()
})
minetest.register_node("geology:jade", {
  description = "Jade",
    tiles = {"geology_jade.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:shale", {
  description = "Shale",
    tiles = {"geology_shale.png","geology_shale.png","geology_shale_side.png"},
    is_ground_content = true,
    groups = {crumbly=2,cracky=2, stone=1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:schist", {
  description = "Schist",
    tiles = {"geology_schist.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:slate", {
  description = "Slate",
    tiles = {"geology_slate.png","geology_slate.png","geology_slate_side.png"},
    is_ground_content = true,
  drop = 'geology:slate_cobble',
    groups = {cracky=2, stone=1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:slate_cobble", {
  description = "Slate Cobble",
    tiles = {"geology_slate_cobble.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=2},
    sounds = default.node_sound_stone_defaults()
})
minetest.register_node("geology:anthracite", {
  description = "Anthracite Coal",
    tiles = {"geology_anthracite.png"},
    is_ground_content = true,
    groups = {cracky=3},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("geology:hematite", {
	description = "Hematite",
	tiles = {"default_stone.png^default_mineral_iron.png^[colorize:black:60"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("geology:chalk_powder", {
    description = "Chalk Powder",
    inventory_image = "geology_chalk_powder.png",
})

-- Cookings
minetest.register_craft({
    type = "cooking",
    output = "geology:basalt",
    recipe = "geology:basalt_cobble",
})

minetest.register_craft({
    type = "cooking",
    output = "default:desert_stone",
    recipe = "geology:desert_stone_cobble",
})

minetest.register_craft({
    type = "cooking",
    output = "geology:gneiss",
    recipe = "geology:schist",
})

minetest.register_craft({
    type = "cooking",
    output = "geology:gneiss",
    recipe = "geology:gneiss_cobble",
})
minetest.register_craft({
    type = "cooking",
    output = "geology:ors",
    recipe = "geology:ors_cobble",
})
minetest.register_craft({
    type = "cooking",
    output = "geology:schist",
    recipe = "geology:slate",
})
minetest.register_craft({
    type = "cooking",
    output = "geology:slate",
    recipe = "geology:slate_cobble",
})

minetest.register_craft({
    type = "fuel",
    recipe = "geology:anthracite",
    burntime = 600, -- nearly twice a normal coal block
})
minetest.register_craft({
    output = 'default:coal_lump 12', -- 33% more than normal coal
    recipe = {
        {'geology:anthracite'},
    }
})

-- minetest.register_alias("geology:diamond_block", "technic:diamondblock")
