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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int32_t ;

/* Variables and functions */
 int PCIR_INTLINE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

u_int32_t
FUNC2(int bus, int slot, int func, int reg, int bytes)
{
	uint32_t line;

	/*
	 * Some BIOS writers seem to want to ignore the spec and put
	 * 0 in the intline rather than 255 to indicate none.  The rest of
	 * the code uses 255 as an invalid IRQ.
	 */
	if (reg == PCIR_INTLINE && bytes == 1) {
		line = FUNC0(bus, slot, func, PCIR_INTLINE, 1);
		return (FUNC1(line));
	}
	return (FUNC0(bus, slot, func, reg, bytes));
}