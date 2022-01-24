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
struct TYPE_4__ {int R_AX; int R_CX; int R_DX; int /*<<< orphan*/  R_DI; int /*<<< orphan*/  R_ES; } ;
typedef  TYPE_1__ x86regs_t ;
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vesa_lock ; 
 int* vesa_palette ; 
 int /*<<< orphan*/  vesa_palette_offs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC6(int start, int colors, u_char *palette, int bits)
{
	x86regs_t regs;
	int i;

	FUNC4(&regs);
	regs.R_AX = 0x4f09;
	/* regs.R_BL = 0; */
	regs.R_CX = colors;
	regs.R_DX = start;

	regs.R_ES = FUNC1(vesa_palette_offs);
	regs.R_DI = FUNC0(vesa_palette_offs);

	bits = 8 - bits;
	FUNC2(&vesa_lock);
	for (i = 0; i < colors; ++i) {
		vesa_palette[i * 4] = palette[i * 3 + 2] >> bits;
		vesa_palette[i * 4 + 1] = palette[i * 3 + 1] >> bits;
		vesa_palette[i * 4 + 2] = palette[i * 3] >> bits;
		vesa_palette[i * 4 + 3] = 0;
	}
	FUNC5(&regs, 0x10);
	FUNC3(&vesa_lock);

	return (regs.R_AX != 0x004f);
}