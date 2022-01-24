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
struct thread {void* td_tid; TYPE_1__* td_proc; } ;
struct proc {int dummy; } ;
typedef  void* pid_t ;
typedef  void* lwpid_t ;
typedef  void* id_t ;
typedef  int /*<<< orphan*/  clockid_t ;
struct TYPE_2__ {void* p_pid; } ;

/* Variables and functions */
#define  CPUCLOCK_WHICH_PID 129 
#define  CPUCLOCK_WHICH_TID 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int PGET_CANSEE ; 
 int PGET_NOTID ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int FUNC3 (void*,int,struct proc**) ; 

int
FUNC4(struct thread *td, id_t id, int which,
    clockid_t *clk_id)
{
	struct proc *p;
	pid_t pid;
	lwpid_t tid;
	int error;

	switch (which) {
	case CPUCLOCK_WHICH_PID:
		if (id != 0) {
			error = FUNC3(id, PGET_CANSEE | PGET_NOTID, &p);
			if (error != 0)
				return (error);
			FUNC2(p);
			pid = id;
		} else {
			pid = td->td_proc->p_pid;
		}
		*clk_id = FUNC0(pid);
		return (0);
	case CPUCLOCK_WHICH_TID:
		tid = id == 0 ? td->td_tid : id;
		*clk_id = FUNC1(tid);
		return (0);
	default:
		return (EINVAL);
	}
}