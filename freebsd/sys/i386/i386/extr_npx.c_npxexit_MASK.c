#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct thread {TYPE_1__* td_proc; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcb_save; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_comm; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int FUNC0 (struct thread*) ; 
 int FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* curpcb ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ hw_float ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(struct thread *td)
{

	FUNC4();
	if (curthread == FUNC2(fpcurthread)) {
		FUNC9();
		FUNC6(curpcb->pcb_save);
		FUNC8();
		FUNC3(fpcurthread, NULL);
	}
	FUNC5();
#ifdef NPX_DEBUG
	if (hw_float) {
		u_int	masked_exceptions;

		masked_exceptions = GET_FPU_CW(td) & GET_FPU_SW(td) & 0x7f;
		/*
		 * Log exceptions that would have trapped with the old
		 * control word (overflow, divide by 0, and invalid operand).
		 */
		if (masked_exceptions & 0x0d)
			log(LOG_ERR,
	"pid %d (%s) exited with masked floating point exceptions 0x%02x\n",
			    td->td_proc->p_pid, td->td_proc->p_comm,
			    masked_exceptions);
	}
#endif
}