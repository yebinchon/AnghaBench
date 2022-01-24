#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UBYTE ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {size_t flip; scalar_t__ sprite_type; size_t frame_offset; scalar_t__ frame; scalar_t__ sprite; TYPE_1__ dir; } ;

/* Variables and functions */
 size_t ACTOR_SPRITE_OFFSET ; 
 void* FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ SPRITE_ACTOR_ANIMATED ; 
 scalar_t__ SPRITE_STATIC ; 
 int S_FLIPX ; 
 size_t TRUE ; 
 TYPE_2__* actors ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t,size_t) ; 

void FUNC5(UBYTE i)
{
  UBYTE s, flip, frame, fo;

  s = FUNC1(i) + ACTOR_SPRITE_OFFSET;
  fo = 0;

  flip = actors[i].flip;

  if (actors[i].sprite_type != SPRITE_STATIC)
  {
    flip = FALSE;

    // Increase frame based on facing direction
    if (FUNC0(actors[i].dir.y))
    {
      fo = 1 + (actors[i].sprite_type == SPRITE_ACTOR_ANIMATED);
    }
    else if (actors[i].dir.x != 0)
    {
      fo = 2 + FUNC1(actors[i].sprite_type == SPRITE_ACTOR_ANIMATED);

      // Facing left so flip sprite
      if (FUNC0(actors[i].dir.x))
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

  frame = FUNC2(actors[i].sprite + actors[i].frame + fo);

  if (flip)
  {
    // Handle facing left
    FUNC3(s, S_FLIPX);
    FUNC4(s, frame + 2, frame);
  }
  else
  {
    // Handle facing right
    FUNC3(s, 0x0);
    FUNC4(s, frame, frame + 2);
  }

  actors[i].frame_offset = 0;
  actors[i].frame_offset = fo;
}