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
struct proc {TYPE_1__* p_session; } ;
struct getlogin_args {int namelen; int /*<<< orphan*/  namebuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_login; } ;

/* Variables and functions */
 int ERANGE ; 
 int MAXLOGNAME ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct thread *td, struct getlogin_args *uap)
{
	char login[MAXLOGNAME];
	struct proc *p = td->td_proc;
	size_t len;

	if (uap->namelen > MAXLOGNAME)
		uap->namelen = MAXLOGNAME;
	FUNC0(p);
	FUNC2(p->p_session);
	len = FUNC5(login, p->p_session->s_login, uap->namelen) + 1;
	FUNC3(p->p_session);
	FUNC1(p);
	if (len > uap->namelen)
		return (ERANGE);
	return (FUNC4(login, uap->namebuf, len));
}