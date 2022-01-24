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
 int /*<<< orphan*/  BLACK ; 
 int /*<<< orphan*/  FILL ; 
 int /*<<< orphan*/  LTGREY ; 
 int /*<<< orphan*/  PEN ; 
 int /*<<< orphan*/  SHOW_SPRITES ; 
 int /*<<< orphan*/  SOLID ; 
 int /*<<< orphan*/  current_cursor ; 
 int cursor_x ; 
 int cursor_y ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4()
{
  UBYTE x, y;

  cursor_x = 40;
  cursor_y = 50;
  current_cursor = PEN;
  FUNC2();
  FUNC0();
  SHOW_SPRITES;

  for(; cursor_x < 120; cursor_x++) {
    FUNC3();
    FUNC0();
    FUNC1(cursor_x, cursor_y, BLACK, SOLID);
  }
  for(; cursor_y < 94; cursor_y++) {
    FUNC3();
    FUNC0();
    FUNC1(cursor_x, cursor_y, BLACK, SOLID);
  }
  for(; cursor_x > 40; cursor_x--) {
    FUNC3();
    FUNC0();
    FUNC1(cursor_x, cursor_y, BLACK, SOLID);
  }
  for(; cursor_y > 50; cursor_y--) {
    FUNC3();
    FUNC0();
    FUNC1(cursor_x, cursor_y, BLACK, SOLID);
  }
  cursor_x = 160/2;
  cursor_y = 144/2;
  current_cursor = FILL;
  FUNC2();
  FUNC0();

  for(y = 51; y < 94; y++)
    for(x = 41; x < 120; x++)
      FUNC1(x, y, LTGREY, SOLID);

  // HIDE_SPRITES;
}