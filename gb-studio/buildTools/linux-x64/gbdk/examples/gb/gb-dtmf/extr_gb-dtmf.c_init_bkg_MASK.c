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
 int /*<<< orphan*/  break_btn ; 
 int /*<<< orphan*/  dtmf_tile ; 
 int /*<<< orphan*/  frame_lcd ; 
 int /*<<< orphan*/  press_btn ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void FUNC2()
{
	/* Initialize the background */
	FUNC0( 0, 9, frame_lcd);
	FUNC0( 9, 9, break_btn);
	FUNC0(18, 9, press_btn);
	
	FUNC1(0, 0, 20, 18, dtmf_tile);
}