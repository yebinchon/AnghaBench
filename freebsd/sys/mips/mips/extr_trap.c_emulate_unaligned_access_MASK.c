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
struct trapframe {int pc; int badvaddr; int /*<<< orphan*/  cause; } ;
struct thread {scalar_t__ td_tid; } ;
struct proc {int /*<<< orphan*/  p_comm; scalar_t__ p_pid; } ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int FUNC1 (struct trapframe*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * access_name ; 
 struct proc* curproc ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct trapframe*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unaligned_curerr ; 
 int /*<<< orphan*/  unaligned_lasterr ; 
 int /*<<< orphan*/  unaligned_pps_log_limit ; 

__attribute__((used)) static int
FUNC5(struct trapframe *frame, int mode)
{
	register_t pc;
	int access_type = 0;
	struct thread *td = curthread;
	struct proc *p = curproc;

	pc = frame->pc + (FUNC0(frame->cause) ? 4 : 0);

	/*
	 * Fall through if it's instruction fetch exception
	 */
	if (!((pc & 3) || (pc == frame->badvaddr))) {

		/*
		 * Handle unaligned load and store
		 */

		/*
		 * Return access type if the instruction was emulated.
		 * Otherwise restore pc and fall through.
		 */
		access_type = FUNC3(frame,
		    mode, frame->badvaddr, pc);

		if (access_type) {
			if (FUNC0(frame->cause))
				frame->pc = FUNC1(frame, frame->pc,
				    0, 0);
			else
				frame->pc += 4;

			if (FUNC4(&unaligned_lasterr,
			    &unaligned_curerr, unaligned_pps_log_limit)) {
				/* XXX TODO: keep global/tid/pid counters? */
				FUNC2(LOG_INFO,
				    "Unaligned %s: pid=%ld (%s), tid=%ld, "
				    "pc=%#jx, badvaddr=%#jx\n",
				    access_name[access_type - 1],
				    (long) p->p_pid,
				    p->p_comm,
				    (long) td->td_tid,
				    (intmax_t)pc,
				    (intmax_t)frame->badvaddr);
			}
		}
	}
	return access_type;
}