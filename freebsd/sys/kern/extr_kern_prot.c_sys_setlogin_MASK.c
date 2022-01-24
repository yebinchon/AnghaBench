#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {struct proc* td_proc; } ;
struct setlogin_args {int /*<<< orphan*/  namebuf; } ;
struct proc {TYPE_1__* p_session; } ;
typedef  int /*<<< orphan*/  logintmp ;
struct TYPE_3__ {int /*<<< orphan*/  s_login; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int MAXLOGNAME ; 
 int /*<<< orphan*/  PRIV_PROC_SETLOGIN ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int
FUNC9(struct thread *td, struct setlogin_args *uap)
{
	struct proc *p = td->td_proc;
	int error;
	char logintmp[MAXLOGNAME];

	FUNC1(sizeof(p->p_session->s_login) >= sizeof(logintmp));

	error = FUNC7(td, PRIV_PROC_SETLOGIN);
	if (error)
		return (error);
	error = FUNC6(uap->namebuf, logintmp, sizeof(logintmp), NULL);
	if (error != 0) {
		if (error == ENAMETOOLONG)
			error = EINVAL;
		return (error);
	}
	FUNC0(logintmp);
	FUNC2(p);
	FUNC4(p->p_session);
	FUNC8(p->p_session->s_login, logintmp);
	FUNC5(p->p_session);
	FUNC3(p);
	return (0);
}