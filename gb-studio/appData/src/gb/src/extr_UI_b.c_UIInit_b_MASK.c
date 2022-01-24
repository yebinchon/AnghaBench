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
typedef  scalar_t__ UWORD ;

/* Variables and functions */
 size_t CURSOR_BANK ; 
 scalar_t__ CURSOR_BANK_OFFSET ; 
 size_t FRAME_BANK ; 
 scalar_t__ FRAME_BANK_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (size_t,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__* bank_data_ptrs ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_black ; 
 int /*<<< orphan*/  ui_white ; 

void FUNC3()
{
  UWORD ptr;

  FUNC1(160, 144);

  // Load frame tiles from data bank
  ptr = ((UWORD)bank_data_ptrs[FRAME_BANK]) + FRAME_BANK_OFFSET;
  FUNC0(FRAME_BANK, 192, 9, ptr);

  FUNC2(0xC9, 1, ui_white);
  FUNC2(0xCA, 1, ui_black);

  ptr = ((UWORD)bank_data_ptrs[CURSOR_BANK]) + CURSOR_BANK_OFFSET;
  FUNC0(FRAME_BANK, 0xCB, 1, ptr);
}