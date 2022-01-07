
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UBYTE ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {size_t flip; scalar_t__ sprite_type; size_t frame_offset; scalar_t__ frame; scalar_t__ sprite; TYPE_1__ dir; } ;


 size_t ACTOR_SPRITE_OFFSET ;
 void* FALSE ;
 scalar_t__ IS_NEG (scalar_t__) ;
 int MUL_2 (int) ;
 size_t MUL_4 (scalar_t__) ;
 scalar_t__ SPRITE_ACTOR_ANIMATED ;
 scalar_t__ SPRITE_STATIC ;
 int S_FLIPX ;
 size_t TRUE ;
 TYPE_2__* actors ;
 int set_sprite_prop_pair (size_t,int) ;
 int set_sprite_tile_pair (size_t,size_t,size_t) ;

void SceneRenderActor_b(UBYTE i)
{
  UBYTE s, flip, frame, fo;

  s = MUL_2(i) + ACTOR_SPRITE_OFFSET;
  fo = 0;

  flip = actors[i].flip;

  if (actors[i].sprite_type != SPRITE_STATIC)
  {
    flip = FALSE;


    if (IS_NEG(actors[i].dir.y))
    {
      fo = 1 + (actors[i].sprite_type == SPRITE_ACTOR_ANIMATED);
    }
    else if (actors[i].dir.x != 0)
    {
      fo = 2 + MUL_2(actors[i].sprite_type == SPRITE_ACTOR_ANIMATED);


      if (IS_NEG(actors[i].dir.x))
      {
        flip = TRUE;
      }
    }
    else
    {
      fo = 0;
    }

    actors[i].flip = FALSE;
    actors[i].flip = flip;
  }

  frame = MUL_4(actors[i].sprite + actors[i].frame + fo);

  if (flip)
  {

    set_sprite_prop_pair(s, S_FLIPX);
    set_sprite_tile_pair(s, frame + 2, frame);
  }
  else
  {

    set_sprite_prop_pair(s, 0x0);
    set_sprite_tile_pair(s, frame, frame + 2);
  }

  actors[i].frame_offset = 0;
  actors[i].frame_offset = fo;
}
