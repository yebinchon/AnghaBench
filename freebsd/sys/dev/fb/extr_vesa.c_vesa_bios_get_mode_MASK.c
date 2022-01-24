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
struct TYPE_4__ {int R_AX; int R_CX; int /*<<< orphan*/  R_DI; int /*<<< orphan*/  R_ES; } ;
typedef  TYPE_1__ x86regs_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vesa_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct vesa_mode*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC7(int mode, struct vesa_mode *vmode, int flags)
{
	x86regs_t regs;
	uint32_t offs;
	void *buf;

	buf = FUNC3(&offs, sizeof(*vmode), flags);
	if (buf == NULL)
		return (1);

	FUNC5(&regs);
	regs.R_AX = 0x4f01;
	regs.R_CX = mode;

	regs.R_ES = FUNC1(offs);
	regs.R_DI = FUNC0(offs);

	FUNC6(&regs, 0x10);

	if (regs.R_AX != 0x004f) {
		FUNC4(buf, sizeof(*vmode));
		return (1);
	}

	FUNC2(buf, vmode, sizeof(*vmode));
	FUNC4(buf, sizeof(*vmode));

	return (0);
}