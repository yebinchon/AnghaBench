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
struct ucred {int dummy; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int VERIEXEC_TRUSTED ; 
 int FUNC3 (struct ucred*,struct proc*,int*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct ucred *cred, struct proc *p)
{
	int already_locked, error, flags;

	/* Make sure we lock the process if we do not already have the lock */
	already_locked = FUNC1(p);
	if (!already_locked)
		FUNC0(p);

	error = FUNC3(cred, p, &flags, 0);

	/* Unlock the process if we locked it previously */
	if (!already_locked)
		FUNC2(p);

	/* Any errors, deny access */
	if (error != 0)
		return (0);

	/* Check that the trusted flag is set */
	return ((flags & VERIEXEC_TRUSTED) == VERIEXEC_TRUSTED);
}