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
struct thread {int dummy; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
#define  PPROT_CLEAR 129 
 int PPROT_DESCEND ; 
 int FUNC0 (int) ; 
 int PPROT_INHERIT ; 
 int FUNC1 (int) ; 
#define  PPROT_SET 128 
 int /*<<< orphan*/  PRIV_VM_MADV_PROTECT ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,struct proc*,int) ; 
 int FUNC4 (struct thread*,struct proc*,int) ; 

__attribute__((used)) static int
FUNC5(struct thread *td, struct proc *p, int flags)
{
	int error, ret;

	switch (FUNC1(flags)) {
	case PPROT_SET:
	case PPROT_CLEAR:
		break;
	default:
		return (EINVAL);
	}

	if ((FUNC0(flags) & ~(PPROT_DESCEND | PPROT_INHERIT)) != 0)
		return (EINVAL);

	error = FUNC2(td, PRIV_VM_MADV_PROTECT);
	if (error)
		return (error);

	if (flags & PPROT_DESCEND)
		ret = FUNC4(td, p, flags);
	else
		ret = FUNC3(td, p, flags);
	if (ret == 0)
		return (EPERM);
	return (0);
}