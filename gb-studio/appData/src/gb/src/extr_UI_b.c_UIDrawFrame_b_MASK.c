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
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_frame_b_tiles ; 
 int /*<<< orphan*/  ui_frame_bg_tiles ; 
 int /*<<< orphan*/  ui_frame_bl_tiles ; 
 int /*<<< orphan*/  ui_frame_br_tiles ; 
 int /*<<< orphan*/  ui_frame_l_tiles ; 
 int /*<<< orphan*/  ui_frame_r_tiles ; 
 int /*<<< orphan*/  ui_frame_t_tiles ; 
 int /*<<< orphan*/  ui_frame_tl_tiles ; 
 int /*<<< orphan*/  ui_frame_tr_tiles ; 

void FUNC1(UBYTE x, UBYTE y, UBYTE width, UBYTE height)
{
  UBYTE i, j;
  FUNC0(x, y, 1, 1, ui_frame_tl_tiles);
  FUNC0(x, height + 1, 1, 1, ui_frame_bl_tiles);
  FUNC0(x + width, 0, 1, 1, ui_frame_tr_tiles);
  FUNC0(x + width, height + 1, 1, 1, ui_frame_br_tiles);

  for (j = 1; j != height + 1; j++)
  {
    FUNC0(x, j, 1, 1, ui_frame_l_tiles);
    FUNC0(x + width, j, 1, 1, ui_frame_r_tiles);
    for (i = 1; i != width; ++i)
    {
      FUNC0(i, j, 1, 1, ui_frame_bg_tiles);
    }
  }

  for (i = 1; i != width; ++i)
  {
    FUNC0(i, 0, 1, 1, ui_frame_t_tiles);
    FUNC0(i, height + 1, 1, 1, ui_frame_b_tiles);
  }
}