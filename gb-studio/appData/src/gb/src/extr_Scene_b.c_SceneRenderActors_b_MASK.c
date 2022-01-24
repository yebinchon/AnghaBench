#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UBYTE ;
typedef  int /*<<< orphan*/  ACTOR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 scalar_t__ ACTOR_SPRITE_OFFSET ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 
 scalar_t__ IS_FRAME_9 ; 
 scalar_t__ MENU_CLOSED_Y ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ SCX_REG ; 
 scalar_t__ SCY_REG ; 
 scalar_t__* actors ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ scene_num_actors ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ win_pos_x ; 
 scalar_t__ win_pos_y ; 

void FUNC11()
{
  UBYTE i, s, x, y, jump;
  UBYTE *ptr;

  if (IS_FRAME_9)
  {
    ptr = actors;
    jump = sizeof(ACTOR);

    for (i = 0; i != scene_num_actors; ++i)
    {
      s = FUNC7(i) + ACTOR_SPRITE_OFFSET;
      x = FUNC8(FUNC4(ptr) + FUNC2(ptr) + FUNC3(ptr));
      if (FUNC1(ptr))
      {
        FUNC10(s + 1, x);
        FUNC10(s, x + 2);
      }
      else
      {
        FUNC10(s, x);
        FUNC10(s + 1, x + 2);
      }

      ptr += jump;
    }
  }

  ptr = actors;
  jump = sizeof(ACTOR);

  for (i = 0; i != scene_num_actors; ++i)
  {
    s = FUNC7(i) + ACTOR_SPRITE_OFFSET;
    x = FUNC5(ptr) - SCX_REG;
    y = FUNC6(ptr) - SCY_REG;

    if (FUNC0(ptr) && (win_pos_y == MENU_CLOSED_Y || (y < win_pos_y + 16 || x < win_pos_x + 8)))
    {
      FUNC9(s, x, y);
      FUNC9(s + 1, x + 8, y);
    }
    else
    {
      FUNC9(s, 0, 0);
      FUNC9(s + 1, 0, 0);
    }
    ptr += jump;
  }
}