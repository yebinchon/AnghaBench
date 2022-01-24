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
typedef  scalar_t__ u_int ;
struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct pdkill_args {scalar_t__ signum; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 scalar_t__ _SIG_MAXSIG ; 
 int /*<<< orphan*/  cap_pdkill_rights ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,scalar_t__) ; 
 int FUNC5 (struct thread*,struct proc*,scalar_t__) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct proc**) ; 

int
FUNC7(struct thread *td, struct pdkill_args *uap)
{
	struct proc *p;
	int error;

	FUNC2(uap->signum);
	FUNC0(uap->fd);
	if ((u_int)uap->signum > _SIG_MAXSIG)
		return (EINVAL);

	error = FUNC6(td, uap->fd, &cap_pdkill_rights, &p);
	if (error)
		return (error);
	FUNC1(p);
	error = FUNC5(td, p, uap->signum);
	if (error == 0 && uap->signum)
		FUNC4(p, uap->signum);
	FUNC3(p);
	return (error);
}