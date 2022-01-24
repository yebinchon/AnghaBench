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
union semun {union semun* buf; int /*<<< orphan*/  val; int /*<<< orphan*/  array; } ;
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct semid_ds {struct semid_ds* buf; int /*<<< orphan*/  val; int /*<<< orphan*/  array; } ;
struct __semctl_args {int cmd; int /*<<< orphan*/  semnum; int /*<<< orphan*/  semid; union semun* arg; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  dsbuf ;
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
#define  GETALL 133 
#define  IPC_SET 132 
#define  IPC_STAT 131 
#define  SEM_STAT 130 
#define  SETALL 129 
#define  SETVAL 128 
 int FUNC0 (union semun*,union semun*,int) ; 
 int FUNC1 (union semun*,union semun*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,union semun*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct __semctl_args *uap)
{
	struct semid_ds dsbuf;
	union semun arg, semun;
	register_t rval;
	int error;

	switch (uap->cmd) {
	case SEM_STAT:
	case IPC_SET:
	case IPC_STAT:
	case GETALL:
	case SETVAL:
	case SETALL:
		error = FUNC0(uap->arg, &arg, sizeof(arg));
		if (error)
			return (error);
		break;
	}

	switch (uap->cmd) {
	case SEM_STAT:
	case IPC_STAT:
		semun.buf = &dsbuf;
		break;
	case IPC_SET:
		error = FUNC0(arg.buf, &dsbuf, sizeof(dsbuf));
		if (error)
			return (error);
		semun.buf = &dsbuf;
		break;
	case GETALL:
	case SETALL:
		semun.array = arg.array;
		break;
	case SETVAL:
		semun.val = arg.val;
		break;		
	}

	error = FUNC2(td, uap->semid, uap->semnum, uap->cmd, &semun,
	    &rval);
	if (error)
		return (error);

	switch (uap->cmd) {
	case SEM_STAT:
	case IPC_STAT:
		error = FUNC1(&dsbuf, arg.buf, sizeof(dsbuf));
		break;
	}

	if (error == 0)
		td->td_retval[0] = rval;
	return (error);
}