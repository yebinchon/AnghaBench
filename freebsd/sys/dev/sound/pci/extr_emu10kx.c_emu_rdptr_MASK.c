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
typedef  int uint32_t ;
struct emu_sc_info {unsigned int address_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_DATA ; 
 int /*<<< orphan*/  EMU_PTR ; 
 unsigned int EMU_PTR_CHNO_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct emu_sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct emu_sc_info*,int /*<<< orphan*/ ,int,int) ; 

uint32_t
FUNC4(struct emu_sc_info *sc, unsigned int chn, unsigned int reg)
{
	uint32_t ptr, val, mask, size, offset;

	ptr = ((reg << 16) & sc->address_mask) | (chn & EMU_PTR_CHNO_MASK);

	FUNC0();
	FUNC3(sc, EMU_PTR, ptr, 4);
	val = FUNC2(sc, EMU_DATA, 4);
	FUNC1();

	/*
	 * XXX Some register numbers has data size and offset encoded in
	 * it to get only part of 32bit register. This use is not described
	 * in register name, be careful!
	 */
	if (reg & 0xff000000) {
		size = (reg >> 24) & 0x3f;
		offset = (reg >> 16) & 0x1f;
		mask = ((1 << size) - 1) << offset;
		val &= mask;
		val >>= offset;
	}
	return (val);
}