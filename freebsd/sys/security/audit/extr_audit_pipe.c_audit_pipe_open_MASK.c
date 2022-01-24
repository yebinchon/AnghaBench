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
struct thread {TYPE_1__* td_proc; } ;
struct cdev {int dummy; } ;
struct audit_pipe {int /*<<< orphan*/  ap_sigio; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct audit_pipe* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int FUNC2 (struct audit_pipe*,int /*<<< orphan*/  (*) (struct audit_pipe*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct audit_pipe *ap;
	int error;

	ap = FUNC0();
	if (ap == NULL)
		return (ENOMEM);
	FUNC3(td->td_proc->p_pid, &ap->ap_sigio);
	error = FUNC2(ap, audit_pipe_dtor);
	if (error != 0)
		FUNC1(ap);
	return (error);
}