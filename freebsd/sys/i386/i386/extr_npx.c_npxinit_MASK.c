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
typedef  union savefpu {int dummy; } savefpu ;
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int CR4_XSAVE ; 
 int /*<<< orphan*/  XCR0 ; 
 int /*<<< orphan*/  __INITIAL_MXCSR__ ; 
 int /*<<< orphan*/  __INITIAL_NPXCW__ ; 
 scalar_t__ cpu_fxsr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (union savefpu*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ use_xsave ; 
 int /*<<< orphan*/  xsave_mask ; 

void
FUNC14(bool bsp)
{
	static union savefpu dummy;
	register_t saveintr;
	u_int mxcsr;
	u_short control;

	if (bsp) {
		if (!FUNC8())
			return;
		FUNC9();
	}

	if (use_xsave) {
		FUNC6(FUNC11() | CR4_XSAVE);
		FUNC7(XCR0, xsave_mask);
	}

	/*
	 * XCR0 shall be set up before CPU can report the save area size.
	 */
	if (bsp)
		FUNC10();
	
	/*
	 * fninit has the same h/w bugs as fnsave.  Use the detoxified
	 * fnsave to throw away any junk in the fpu.  fpusave() initializes
	 * the fpu.
	 *
	 * It is too early for critical_enter() to work on AP.
	 */
	saveintr = FUNC3();
	FUNC13();
	if (cpu_fxsr)
		FUNC1();
	else
		FUNC2(&dummy);
	control = __INITIAL_NPXCW__;
	FUNC0(control);
	if (cpu_fxsr) {
		mxcsr = __INITIAL_MXCSR__;
		FUNC5(mxcsr);
	}
	FUNC12();
	FUNC4(saveintr);
}