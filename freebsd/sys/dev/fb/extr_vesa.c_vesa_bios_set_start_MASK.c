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
struct TYPE_4__ {int R_AX; int R_BL; int R_CX; int R_DX; } ;
typedef  TYPE_1__ x86regs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC2(int x, int y)
{
	x86regs_t regs;

	FUNC0(&regs);
	regs.R_AX = 0x4f07;
	regs.R_BL = 0x80;
	regs.R_CX = x;
	regs.R_DX = y;

	FUNC1(&regs, 0x10);

	return (regs.R_AX != 0x004f);
}