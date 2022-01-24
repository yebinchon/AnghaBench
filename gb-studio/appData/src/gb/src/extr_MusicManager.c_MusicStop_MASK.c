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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_MUSIC ; 
 int /*<<< orphan*/  POP_BANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_index ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(UBYTE return_bank)
{
  FUNC0(return_bank);
  FUNC1();
  current_index = MAX_MUSIC;
  POP_BANK;
}