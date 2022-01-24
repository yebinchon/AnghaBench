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
struct thread {TYPE_1__* td_ucred; } ;
struct shmget_args {int shmflg; scalar_t__ key; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_prison; } ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int ENOENT ; 
 int ENOSYS ; 
 int IPC_CREAT ; 
 scalar_t__ IPC_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct thread*,struct shmget_args*,int) ; 
 int FUNC5 (struct thread*,struct shmget_args*,int,int) ; 

int
FUNC6(struct thread *td, struct shmget_args *uap)
{
	int segnum, mode;
	int error;

	if (FUNC2(td->td_ucred) == NULL)
		return (ENOSYS);
	mode = uap->shmflg & ACCESSPERMS;
	FUNC0();
	if (uap->key == IPC_PRIVATE) {
		error = FUNC4(td, uap, mode);
	} else {
		segnum = FUNC3(td->td_ucred->cr_prison,
		    uap->key);
		if (segnum >= 0)
			error = FUNC5(td, uap, mode, segnum);
		else if ((uap->shmflg & IPC_CREAT) == 0)
			error = ENOENT;
		else
			error = FUNC4(td, uap, mode);
	}
	FUNC1();
	return (error);
}