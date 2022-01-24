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
struct emu_sc_info {int code_size; unsigned int high_operand_shift; unsigned int opcode_shift; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_sc_info*,int,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct emu_sc_info *sc, unsigned int op, unsigned int z, unsigned int w, unsigned int x, unsigned int y, uint32_t * pc)
{
	if ((*pc) + 1 > sc->code_size) {
		FUNC0(sc->dev, "DSP CODE OVERRUN: attept to write past code_size (pc=%d)\n", (*pc));
		return;
	}
	FUNC1(sc, (*pc) * 2, (x << sc->high_operand_shift) | y);
	FUNC1(sc, (*pc) * 2 + 1, (op << sc->opcode_shift) | (z << sc->high_operand_shift) | w);
	(*pc)++;
}