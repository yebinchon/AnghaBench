#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int R_AX; int R_BL; int R_BH; } ;
typedef  TYPE_1__ x86regs_t ;

/* Variables and functions */
 int ENXIO ; 
 int VBE_DPMS_FUNCTION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC3(int subfunction, int *bh)
{
	x86regs_t regs;

	if (FUNC0(0x10) == 0)
		return (ENXIO);

	FUNC1(&regs);
	regs.R_AX = VBE_DPMS_FUNCTION;
	regs.R_BL = subfunction;
	regs.R_BH = *bh;
	FUNC2(&regs, 0x10);

	if (regs.R_AX != 0x004f)
		return (ENXIO);

	*bh = regs.R_BH;

	return (0);
}