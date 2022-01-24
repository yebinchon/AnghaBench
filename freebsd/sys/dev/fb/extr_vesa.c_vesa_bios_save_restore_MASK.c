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
struct TYPE_4__ {int R_AX; int R_DL; int /*<<< orphan*/  R_BX; int /*<<< orphan*/  R_ES; int /*<<< orphan*/  R_CX; } ;
typedef  TYPE_1__ x86regs_t ;

/* Variables and functions */
#define  STATE_LOAD 129 
#define  STATE_SAVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vesa_lock ; 
 int /*<<< orphan*/  vesa_state ; 
 void* vesa_state_buf ; 
 int /*<<< orphan*/  vesa_state_buf_offs ; 
 int /*<<< orphan*/  vesa_state_buf_size ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC7(int code, void *p)
{
	x86regs_t regs;

	if (code != STATE_SAVE && code != STATE_LOAD)
		return (1);

	FUNC5(&regs);
	regs.R_AX = 0x4f04;
	regs.R_DL = code;
	regs.R_CX = vesa_state;

	regs.R_ES = FUNC1(vesa_state_buf_offs);
	regs.R_BX = FUNC0(vesa_state_buf_offs);

	FUNC3(&vesa_lock);
	switch (code) {
	case STATE_SAVE:
		FUNC6(&regs, 0x10);
		if (regs.R_AX == 0x004f)
			FUNC2(vesa_state_buf, p, vesa_state_buf_size);
		break;
	case STATE_LOAD:
		FUNC2(p, vesa_state_buf, vesa_state_buf_size);
		FUNC6(&regs, 0x10);
		break;
	}
	FUNC4(&vesa_lock);

	return (regs.R_AX != 0x004f);
}