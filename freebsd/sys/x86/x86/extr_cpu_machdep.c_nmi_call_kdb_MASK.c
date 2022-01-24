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
typedef  int u_int ;
struct trapframe {int /*<<< orphan*/  tf_err; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ kdb_on_nmi ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ panic_on_nmi ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void
FUNC4(u_int cpu, u_int type, struct trapframe *frame)
{
	bool claimed = false;

#ifdef DEV_ISA
	/* machine/parity/power fail/"kitchen sink" faults */
	if (isa_nmi(frame->tf_err)) {
		claimed = true;
		if (panic_on_nmi)
			panic("NMI indicates hardware failure");
	}
#endif /* DEV_ISA */
#ifdef KDB
	if (!claimed && kdb_on_nmi) {
		/*
		 * NMI can be hooked up to a pushbutton for debugging.
		 */
		printf("NMI/cpu%d ... going to debugger\n", cpu);
		kdb_trap(type, 0, frame);
	}
#endif /* KDB */
}