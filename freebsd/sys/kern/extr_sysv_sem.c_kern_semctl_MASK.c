#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union semun {int val; int /*<<< orphan*/  array; struct semid_ds* buf; } ;
typedef  int u_short ;
struct ucred {int /*<<< orphan*/  cr_prison; } ;
struct thread {struct ucred* td_ucred; } ;
struct TYPE_11__ {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_12__ {int sem_nsems; TYPE_2__* __sem_base; TYPE_4__ sem_perm; int /*<<< orphan*/  sem_ctime; } ;
struct semid_kernel {TYPE_5__ u; TYPE_1__* cred; } ;
struct TYPE_13__ {int mode; void* key; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct semid_ds {TYPE_7__ sem_perm; } ;
struct prison {int dummy; } ;
struct mtx {int dummy; } ;
typedef  int register_t ;
struct TYPE_10__ {int semmni; int semvmx; } ;
struct TYPE_9__ {int semncnt; int sempid; int semval; int semzcnt; } ;
struct TYPE_8__ {int /*<<< orphan*/  cr_prison; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
 int ENOSYS ; 
 int ERANGE ; 
#define  GETALL 138 
#define  GETNCNT 137 
#define  GETPID 136 
#define  GETVAL 135 
#define  GETZCNT 134 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  IPC_M ; 
 void* IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_R ; 
#define  IPC_RMID 133 
#define  IPC_SET 132 
#define  IPC_STAT 131 
 int /*<<< orphan*/  IPC_W ; 
 int FUNC5 (int,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int SEM_ALLOC ; 
#define  SEM_STAT 130 
#define  SETALL 129 
#define  SETVAL 128 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,struct semid_ds*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct thread*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ucred*,struct semid_kernel*,int) ; 
 int* FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC17 (struct mtx*) ; 
 int /*<<< orphan*/ * sem ; 
 struct prison* FUNC18 (struct ucred*) ; 
 struct mtx sem_mtx ; 
 int FUNC19 (struct prison*,struct semid_kernel*) ; 
 int /*<<< orphan*/  FUNC20 (int,struct ucred*) ; 
 struct semid_kernel* sema ; 
 struct mtx* sema_mtx ; 
 TYPE_3__ seminfo ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 
 int FUNC22 (int,struct prison*,struct semid_kernel*) ; 
 int /*<<< orphan*/  time_second ; 
 int /*<<< orphan*/  FUNC23 (struct semid_kernel*) ; 

int
FUNC24(struct thread *td, int semid, int semnum, int cmd,
    union semun *arg, register_t *rval)
{
	u_short *array;
	struct ucred *cred = td->td_ucred;
	int i, error;
	struct prison *rpr;
	struct semid_ds *sbuf;
	struct semid_kernel *semakptr;
	struct mtx *sema_mtxp;
	u_short usval, count;
	int semidx;

	FUNC3(("call to semctl(%d, %d, %d, 0x%p)\n",
	    semid, semnum, cmd, arg));

	FUNC0(cmd);
	FUNC1(semid);

	rpr = FUNC18(td->td_ucred);
	if (sem == NULL)
		return (ENOSYS);

	array = NULL;

	switch(cmd) {
	case SEM_STAT:
		/*
		 * For this command we assume semid is an array index
		 * rather than an IPC id.
		 */
		if (semid < 0 || semid >= seminfo.semmni)
			return (EINVAL);
		semakptr = &sema[semid];
		sema_mtxp = &sema_mtx[semid];
		FUNC16(sema_mtxp);
		if ((semakptr->u.sem_perm.mode & SEM_ALLOC) == 0) {
			error = EINVAL;
			goto done2;
		}
		if ((error = FUNC19(rpr, semakptr)))
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_R)))
			goto done2;
#ifdef MAC
		error = mac_sysvsem_check_semctl(cred, semakptr, cmd);
		if (error != 0)
			goto done2;
#endif
		FUNC9(&semakptr->u, arg->buf, sizeof(struct semid_ds));
		if (cred->cr_prison != semakptr->cred->cr_prison)
			arg->buf->sem_perm.key = IPC_PRIVATE;
		*rval = FUNC5(semid, semakptr->u.sem_perm);
		FUNC17(sema_mtxp);
		return (0);
	}

	semidx = FUNC4(semid);
	if (semidx < 0 || semidx >= seminfo.semmni)
		return (EINVAL);

	semakptr = &sema[semidx];
	sema_mtxp = &sema_mtx[semidx];
	if (cmd == IPC_RMID)
		FUNC16(&sem_mtx);
	FUNC16(sema_mtxp);

#ifdef MAC
	error = mac_sysvsem_check_semctl(cred, semakptr, cmd);
	if (error != 0)
		goto done2;
#endif

	error = 0;
	*rval = 0;

	switch (cmd) {
	case IPC_RMID:
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_M)))
			goto done2;
		FUNC20(semidx, cred);
		break;

	case IPC_SET:
		FUNC2(&arg->buf->sem_perm);
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_M)))
			goto done2;
		sbuf = arg->buf;
		semakptr->u.sem_perm.uid = sbuf->sem_perm.uid;
		semakptr->u.sem_perm.gid = sbuf->sem_perm.gid;
		semakptr->u.sem_perm.mode = (semakptr->u.sem_perm.mode &
		    ~0777) | (sbuf->sem_perm.mode & 0777);
		semakptr->u.sem_ctime = time_second;
		break;

	case IPC_STAT:
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_R)))
			goto done2;
		FUNC9(&semakptr->u, arg->buf, sizeof(struct semid_ds));
		if (cred->cr_prison != semakptr->cred->cr_prison)
			arg->buf->sem_perm.key = IPC_PRIVATE;
		break;

	case GETNCNT:
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_R)))
			goto done2;
		if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
			error = EINVAL;
			goto done2;
		}
		*rval = semakptr->u.__sem_base[semnum].semncnt;
		break;

	case GETPID:
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_R)))
			goto done2;
		if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
			error = EINVAL;
			goto done2;
		}
		*rval = semakptr->u.__sem_base[semnum].sempid;
		break;

	case GETVAL:
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_R)))
			goto done2;
		if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
			error = EINVAL;
			goto done2;
		}
		*rval = semakptr->u.__sem_base[semnum].semval;
		break;

	case GETALL:
		/*
		 * Unfortunately, callers of this function don't know
		 * in advance how many semaphores are in this set.
		 * While we could just allocate the maximum size array
		 * and pass the actual size back to the caller, that
		 * won't work for SETALL since we can't copyin() more
		 * data than the user specified as we may return a
		 * spurious EFAULT.
		 * 
		 * Note that the number of semaphores in a set is
		 * fixed for the life of that set.  The only way that
		 * the 'count' could change while are blocked in
		 * malloc() is if this semaphore set were destroyed
		 * and a new one created with the same index.
		 * However, semvalid() will catch that due to the
		 * sequence number unless exactly 0x8000 (or a
		 * multiple thereof) semaphore sets for the same index
		 * are created and destroyed while we are in malloc!
		 *
		 */
		count = semakptr->u.sem_nsems;
		FUNC17(sema_mtxp);		    
		array = FUNC15(sizeof(*array) * count, M_TEMP, M_WAITOK);
		FUNC16(sema_mtxp);
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		FUNC6(count == semakptr->u.sem_nsems, ("nsems changed"));
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_R)))
			goto done2;
		for (i = 0; i < semakptr->u.sem_nsems; i++)
			array[i] = semakptr->u.__sem_base[i].semval;
		FUNC17(sema_mtxp);
		error = FUNC11(array, arg->array, count * sizeof(*array));
		FUNC16(sema_mtxp);
		break;

	case GETZCNT:
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_R)))
			goto done2;
		if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
			error = EINVAL;
			goto done2;
		}
		*rval = semakptr->u.__sem_base[semnum].semzcnt;
		break;

	case SETVAL:
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_W)))
			goto done2;
		if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
			error = EINVAL;
			goto done2;
		}
		if (arg->val < 0 || arg->val > seminfo.semvmx) {
			error = ERANGE;
			goto done2;
		}
		semakptr->u.__sem_base[semnum].semval = arg->val;
		FUNC7();
		FUNC21(semidx, semnum);
		FUNC8();
		FUNC23(semakptr);
		break;

	case SETALL:
		/*
		 * See comment on GETALL for why 'count' shouldn't change
		 * and why we require a userland buffer.
		 */
		count = semakptr->u.sem_nsems;
		FUNC17(sema_mtxp);		    
		array = FUNC15(sizeof(*array) * count, M_TEMP, M_WAITOK);
		error = FUNC10(arg->array, array, count * sizeof(*array));
		FUNC16(sema_mtxp);
		if (error)
			break;
		if ((error = FUNC22(semid, rpr, semakptr)) != 0)
			goto done2;
		FUNC6(count == semakptr->u.sem_nsems, ("nsems changed"));
		if ((error = FUNC13(td, &semakptr->u.sem_perm, IPC_W)))
			goto done2;
		for (i = 0; i < semakptr->u.sem_nsems; i++) {
			usval = array[i];
			if (usval > seminfo.semvmx) {
				error = ERANGE;
				break;
			}
			semakptr->u.__sem_base[i].semval = usval;
		}
		FUNC7();
		FUNC21(semidx, -1);
		FUNC8();
		FUNC23(semakptr);
		break;

	default:
		error = EINVAL;
		break;
	}

done2:
	FUNC17(sema_mtxp);
	if (cmd == IPC_RMID)
		FUNC17(&sem_mtx);
	if (array != NULL)
		FUNC12(array, M_TEMP);
	return(error);
}