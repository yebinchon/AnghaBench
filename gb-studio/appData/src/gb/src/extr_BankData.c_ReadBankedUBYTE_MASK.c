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
 int /*<<< orphan*/  POP_BANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

UBYTE FUNC1(UBYTE bank, unsigned char *ptr)
{
  UBYTE value;
  FUNC0(bank);
  value = *(UBYTE *)ptr;
  POP_BANK;
  return value;
}