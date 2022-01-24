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
 int /*<<< orphan*/  DISABLE_RAM ; 
 int /*<<< orphan*/  ENABLE_RAM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * RAMPtr ; 
 scalar_t__ RAM_START_PTR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ script_cmd_args_len ; 
 int /*<<< orphan*/  script_continue ; 
 int /*<<< orphan*/  script_ptr ; 

void FUNC0()
{
  ENABLE_RAM;
  RAMPtr = (UBYTE *)RAM_START_PTR;
  RAMPtr[0] = FALSE;
  DISABLE_RAM;

  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}