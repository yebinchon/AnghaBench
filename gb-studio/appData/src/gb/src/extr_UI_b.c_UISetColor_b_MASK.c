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
typedef  size_t UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_black ; 
 int /*<<< orphan*/ * ui_colors ; 
 int /*<<< orphan*/  ui_white ; 

void FUNC2(UBYTE color)
{
  // Not sure why need to set_bkg_data again but this doesn't
  // work in rom without reseting here
  FUNC0(0xC9, 1, ui_white);
  FUNC0(0xCA, 1, ui_black);
  FUNC1(0, 0, 20, 18, ui_colors[color]);
}