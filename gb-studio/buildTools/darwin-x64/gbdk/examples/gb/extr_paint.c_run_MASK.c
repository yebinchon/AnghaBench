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
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  HIDE_SPRITES ; 
 int J_A ; 
 int J_B ; 
 int J_DOWN ; 
 int J_LEFT ; 
 int J_RIGHT ; 
 int J_SELECT ; 
 int J_UP ; 
 int /*<<< orphan*/  SHOW_SPRITES ; 
 int /*<<< orphan*/  SOLID ; 
 int /*<<< orphan*/  WHITE ; 
 int /*<<< orphan*/ * colors ; 
 size_t current_color ; 
 size_t current_mode ; 
 int cursor_x ; 
 int cursor_y ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * modes ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6()
{
  UBYTE key;
  UBYTE slowdown;
  UBYTE drawn, erased;

  slowdown = 10;
  drawn = erased = 0;

  FUNC4();
  FUNC2();
  SHOW_SPRITES;

  while(1) {
    FUNC5();
    key = FUNC0();
    if(key & (J_UP|J_DOWN|J_LEFT|J_RIGHT)) {
      if(key & J_UP && cursor_y > 0)
	cursor_y--;
      if(key & J_DOWN && cursor_y < 143)
	cursor_y++;
      if(key & J_LEFT && cursor_x > 0)
	cursor_x--;
      if(key & J_RIGHT && cursor_x < 159)
	cursor_x++;
      FUNC2();
      while(slowdown && key == FUNC0()) {
	FUNC5();
	slowdown--;
      }
      slowdown = 1;
      drawn = erased = 0;
    } else
      slowdown = 10;
    if(key & J_SELECT) {
      HIDE_SPRITES;
      FUNC1();
      FUNC4();
      FUNC2();
      SHOW_SPRITES;
    }
    if((key & (J_A|J_B)) == J_A) {
      if(!drawn) {
	drawn++;
	FUNC3(cursor_x, cursor_y, colors[current_color], modes[current_mode]);
      }
    } else
      drawn = 0;
    if((key & (J_A|J_B)) == J_B) {
      if(!erased) {
	erased++;
	FUNC3(cursor_x, cursor_y, WHITE, SOLID);
      }
    } else
      erased = 0;
  }
}