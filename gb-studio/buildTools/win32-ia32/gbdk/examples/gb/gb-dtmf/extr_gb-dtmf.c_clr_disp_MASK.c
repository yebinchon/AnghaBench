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

/* Variables and functions */
 int /*<<< orphan*/  LCD_HIGHT ; 
 int /*<<< orphan*/  LCD_WIDTH ; 
 int /*<<< orphan*/  LCD_X ; 
 int /*<<< orphan*/  LCD_Y ; 
 int /*<<< orphan*/  OFFSET ; 
 int /*<<< orphan*/  dtmf_lcd ; 
 int /*<<< orphan*/  init_disp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2()
{
	FUNC0(OFFSET, 50, dtmf_lcd);
	FUNC1(LCD_X, LCD_Y, LCD_WIDTH, LCD_HIGHT, init_disp);
}