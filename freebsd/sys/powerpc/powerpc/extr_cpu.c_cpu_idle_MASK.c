#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_2__ {scalar_t__ md_saved_msr; } ;
struct thread {TYPE_1__ td_md; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 int PSL_EE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  curcpu ; 
 struct thread* curthread ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

void
FUNC9(int busy)
{
	sbintime_t sbt = -1;

#ifdef INVARIANTS
	if ((mfmsr() & PSL_EE) != PSL_EE) {
		struct thread *td = curthread;
		printf("td msr %#lx\n", (u_long)td->td_md.md_saved_msr);
		panic("ints disabled in idleproc!");
	}
#endif

	FUNC0(KTR_SPARE2, "cpu_idle(%d) at %d",
	    busy, curcpu);

	if (&cpu_idle_hook != NULL) {
		if (!busy) {
			FUNC4();
			sbt = FUNC3();
		}
		FUNC2(sbt);
		if (!busy) {
			FUNC1();
			FUNC5();
		}
	}

	FUNC0(KTR_SPARE2, "cpu_idle(%d) at %d done",
	    busy, curcpu);
}