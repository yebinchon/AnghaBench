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
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 

void FUNC2(UBYTE bank, unsigned char *out, unsigned char *ptr, UBYTE size)
{
  FUNC0(bank);

  FUNC1(&out, ptr, size);

  POP_BANK;
}