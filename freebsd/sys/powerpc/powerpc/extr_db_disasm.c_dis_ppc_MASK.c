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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct opcode {int mask; int code; int /*<<< orphan*/  name; } ;
typedef  int instr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct opcode const*,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void
FUNC3(const struct opcode *opcodeset, instr_t instr, vm_offset_t loc)
{
	const struct opcode *op;
	int found = 0;
	int i;
	char disasm_str[80];

	for (i = 0, op = &opcodeset[0];
	    found == 0 && op->mask != 0;
	    i++, op = &opcodeset[i]) {
		if ((instr & op->mask) == op->code) {
			found = 1;
			FUNC1(op, instr, loc, disasm_str,
				sizeof disasm_str);
			FUNC0("%s%s\n", op->name, disasm_str);
			return;
		}
	}
	FUNC2(instr, loc);
}