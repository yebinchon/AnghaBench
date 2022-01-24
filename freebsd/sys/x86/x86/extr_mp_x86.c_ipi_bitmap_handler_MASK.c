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
typedef  int u_int ;
struct trapframe {int dummy; } ;
struct thread {int /*<<< orphan*/  td_intr_nesting_level; struct trapframe* td_intr_frame; } ;
struct TYPE_2__ {int /*<<< orphan*/  pc_ipi_bitmap; } ;

/* Variables and functions */
 int IPI_AST ; 
 int IPI_HARDCLOCK ; 
 int IPI_PREEMPT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_1__** cpuid_to_pcpu ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ ** ipi_ast_counts ; 
 int /*<<< orphan*/ ** ipi_hardclock_counts ; 
 int /*<<< orphan*/ ** ipi_preempt_counts ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

void
FUNC6(struct trapframe frame)
{
	struct trapframe *oldframe;
	struct thread *td;
	int cpu = FUNC0(cpuid);
	u_int ipi_bitmap;

	FUNC2();
	td = curthread;
	td->td_intr_nesting_level++;
	oldframe = td->td_intr_frame;
	td->td_intr_frame = &frame;
	ipi_bitmap = FUNC1(&cpuid_to_pcpu[cpu]->pc_ipi_bitmap);
	if (ipi_bitmap & (1 << IPI_PREEMPT)) {
#ifdef COUNT_IPIS
		(*ipi_preempt_counts[cpu])++;
#endif
		FUNC5(td);
	}
	if (ipi_bitmap & (1 << IPI_AST)) {
#ifdef COUNT_IPIS
		(*ipi_ast_counts[cpu])++;
#endif
		/* Nothing to do for AST */
	}
	if (ipi_bitmap & (1 << IPI_HARDCLOCK)) {
#ifdef COUNT_IPIS
		(*ipi_hardclock_counts[cpu])++;
#endif
		FUNC4();
	}
	td->td_intr_frame = oldframe;
	td->td_intr_nesting_level--;
	FUNC3();
}