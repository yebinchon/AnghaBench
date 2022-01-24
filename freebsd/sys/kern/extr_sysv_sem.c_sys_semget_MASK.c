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
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ucred {scalar_t__ cr_prison; int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct thread {int /*<<< orphan*/ * td_retval; int /*<<< orphan*/  td_proc; struct ucred* td_ucred; } ;
struct semget_args {int key; int nsems; int semflg; } ;
struct TYPE_13__ {scalar_t__ cr_prison; } ;
struct TYPE_12__ {int mode; int key; int seq; int /*<<< orphan*/  gid; int /*<<< orphan*/  cgid; int /*<<< orphan*/  uid; int /*<<< orphan*/  cuid; } ;
struct TYPE_9__ {int sem_nsems; TYPE_6__ sem_perm; int /*<<< orphan*/ * __sem_base; int /*<<< orphan*/  sem_ctime; scalar_t__ sem_otime; } ;
struct TYPE_11__ {TYPE_1__ u; TYPE_7__* cred; } ;
struct TYPE_10__ {int semmni; int semmsl; int semmns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENOSYS ; 
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int IPC_PRIVATE ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_6__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RACCT_NSEM ; 
 int SEM_ALLOC ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_7__* FUNC8 (struct ucred*) ; 
 int FUNC9 (struct thread*,TYPE_6__*,int) ; 
 int FUNC10 (struct ucred*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ucred*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/ * sem ; 
 int /*<<< orphan*/ * FUNC15 (struct ucred*) ; 
 int /*<<< orphan*/  sem_mtx ; 
 TYPE_3__* sema ; 
 int /*<<< orphan*/ * sema_mtx ; 
 TYPE_2__ seminfo ; 
 size_t semtot ; 
 int /*<<< orphan*/  time_second ; 

int
FUNC16(struct thread *td, struct semget_args *uap)
{
	int semid, error = 0;
	int key = uap->key;
	int nsems = uap->nsems;
	int semflg = uap->semflg;
	struct ucred *cred = td->td_ucred;

	FUNC2(("semget(0x%x, %d, 0%o)\n", key, nsems, semflg));

	FUNC1(semflg);

	if (FUNC15(cred) == NULL)
		return (ENOSYS);

	FUNC12(&sem_mtx);
	if (key != IPC_PRIVATE) {
		for (semid = 0; semid < seminfo.semmni; semid++) {
			if ((sema[semid].u.sem_perm.mode & SEM_ALLOC) &&
			    sema[semid].cred != NULL &&
			    sema[semid].cred->cr_prison == cred->cr_prison &&
			    sema[semid].u.sem_perm.key == key)
				break;
		}
		if (semid < seminfo.semmni) {
			FUNC0(semid);
			FUNC2(("found public key\n"));
			if ((semflg & IPC_CREAT) && (semflg & IPC_EXCL)) {
				FUNC2(("not exclusive\n"));
				error = EEXIST;
				goto done2;
			}
			if ((error = FUNC9(td, &sema[semid].u.sem_perm,
			    semflg & 0700))) {
				goto done2;
			}
			if (nsems > 0 && sema[semid].u.sem_nsems < nsems) {
				FUNC2(("too small\n"));
				error = EINVAL;
				goto done2;
			}
#ifdef MAC
			error = mac_sysvsem_check_semget(cred, &sema[semid]);
			if (error != 0)
				goto done2;
#endif
			goto found;
		}
	}

	FUNC2(("need to allocate the semid_kernel\n"));
	if (key == IPC_PRIVATE || (semflg & IPC_CREAT)) {
		if (nsems <= 0 || nsems > seminfo.semmsl) {
			FUNC2(("nsems out of range (0<%d<=%d)\n", nsems,
			    seminfo.semmsl));
			error = EINVAL;
			goto done2;
		}
		if (nsems > seminfo.semmns - semtot) {
			FUNC2((
			    "not enough semaphores left (need %d, got %d)\n",
			    nsems, seminfo.semmns - semtot));
			error = ENOSPC;
			goto done2;
		}
		for (semid = 0; semid < seminfo.semmni; semid++) {
			if ((sema[semid].u.sem_perm.mode & SEM_ALLOC) == 0)
				break;
		}
		if (semid == seminfo.semmni) {
			FUNC2(("no more semid_kernel's available\n"));
			error = ENOSPC;
			goto done2;
		}
#ifdef RACCT
		if (racct_enable) {
			PROC_LOCK(td->td_proc);
			error = racct_add(td->td_proc, RACCT_NSEM, nsems);
			PROC_UNLOCK(td->td_proc);
			if (error != 0) {
				error = ENOSPC;
				goto done2;
			}
		}
#endif
		FUNC2(("semid %d is available\n", semid));
		FUNC12(&sema_mtx[semid]);
		FUNC4((sema[semid].u.sem_perm.mode & SEM_ALLOC) == 0,
		    ("Lost semaphore %d", semid));
		sema[semid].u.sem_perm.key = key;
		sema[semid].u.sem_perm.cuid = cred->cr_uid;
		sema[semid].u.sem_perm.uid = cred->cr_uid;
		sema[semid].u.sem_perm.cgid = cred->cr_gid;
		sema[semid].u.sem_perm.gid = cred->cr_gid;
		sema[semid].u.sem_perm.mode = (semflg & 0777) | SEM_ALLOC;
		sema[semid].cred = FUNC8(cred);
		sema[semid].u.sem_perm.seq =
		    (sema[semid].u.sem_perm.seq + 1) & 0x7fff;
		sema[semid].u.sem_nsems = nsems;
		sema[semid].u.sem_otime = 0;
		sema[semid].u.sem_ctime = time_second;
		sema[semid].u.__sem_base = &sem[semtot];
		semtot += nsems;
		FUNC7(sema[semid].u.__sem_base,
		    sizeof(sema[semid].u.__sem_base[0])*nsems);
#ifdef MAC
		mac_sysvsem_create(cred, &sema[semid]);
#endif
		FUNC13(&sema_mtx[semid]);
		FUNC2(("sembase = %p, next = %p\n",
		    sema[semid].u.__sem_base, &sem[semtot]));
	} else {
		FUNC2(("didn't find it and wasn't asked to create it\n"));
		error = ENOENT;
		goto done2;
	}

found:
	td->td_retval[0] = FUNC3(semid, sema[semid].u.sem_perm);
done2:
	FUNC13(&sem_mtx);
	return (error);
}