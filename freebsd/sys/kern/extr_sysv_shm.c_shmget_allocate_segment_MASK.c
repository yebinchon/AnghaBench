#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_2__* vm_object_t ;
struct ucred {int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct thread {int /*<<< orphan*/ * td_retval; TYPE_7__* td_proc; struct ucred* td_ucred; } ;
struct TYPE_14__ {int mode; int seq; int /*<<< orphan*/  key; int /*<<< orphan*/  gid; int /*<<< orphan*/  cgid; int /*<<< orphan*/  uid; int /*<<< orphan*/  cuid; } ;
struct TYPE_15__ {TYPE_13__ shm_perm; int /*<<< orphan*/  shm_ctime; scalar_t__ shm_dtime; scalar_t__ shm_atime; scalar_t__ shm_nattch; scalar_t__ shm_lpid; int /*<<< orphan*/  shm_cpid; int /*<<< orphan*/  shm_segsz; } ;
struct shmid_kernel {TYPE_1__ u; int /*<<< orphan*/  cred; TYPE_2__* object; } ;
struct shmget_args {int /*<<< orphan*/  size; int /*<<< orphan*/  key; } ;
struct TYPE_18__ {int /*<<< orphan*/  p_pid; } ;
struct TYPE_17__ {scalar_t__ shmmni; scalar_t__ shmall; int /*<<< orphan*/  shmmax; int /*<<< orphan*/  shmmin; } ;
struct TYPE_16__ {scalar_t__ pg_color; } ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_13__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  OBJT_PHYS ; 
 int /*<<< orphan*/  OBJT_SWAP ; 
 int OBJ_COLORED ; 
 int OBJ_NOSPLIT ; 
 int /*<<< orphan*/  OBJ_ONEMAPPING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  RACCT_NSHM ; 
 int /*<<< orphan*/  RACCT_SHMSIZE ; 
 int SHMSEG_ALLOCATED ; 
 int SHMSEG_FREE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*,struct shmid_kernel*) ; 
 scalar_t__ FUNC10 (TYPE_7__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ shm_committed ; 
 int shm_last_free ; 
 scalar_t__ shm_nused ; 
 scalar_t__ shm_use_phys ; 
 int shmalloced ; 
 TYPE_6__ shminfo ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct shmid_kernel* shmsegs ; 
 int /*<<< orphan*/  time_second ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*) ; 

__attribute__((used)) static int
FUNC17(struct thread *td, struct shmget_args *uap, int mode)
{
	struct ucred *cred = td->td_ucred;
	struct shmid_kernel *shmseg;
	vm_object_t shm_object;
	int i, segnum;
	size_t size;

	FUNC4();

	if (uap->size < shminfo.shmmin || uap->size > shminfo.shmmax)
		return (EINVAL);
	if (shm_nused >= shminfo.shmmni) /* Any shmids left? */
		return (ENOSPC);
	size = FUNC12(uap->size);
	if (shm_committed + FUNC7(size) > shminfo.shmall)
		return (ENOMEM);
	if (shm_last_free < 0) {
		FUNC13();	/* Maybe expand the shmsegs[] array. */
		for (i = 0; i < shmalloced; i++)
			if (shmsegs[i].u.shm_perm.mode & SHMSEG_FREE)
				break;
		if (i == shmalloced)
			return (ENOSPC);
		segnum = i;
	} else  {
		segnum = shm_last_free;
		shm_last_free = -1;
	}
	FUNC1(segnum >= 0 && segnum < shmalloced,
	    ("segnum %d shmalloced %d", segnum, shmalloced));
	shmseg = &shmsegs[segnum];
#ifdef RACCT
	if (racct_enable) {
		PROC_LOCK(td->td_proc);
		if (racct_add(td->td_proc, RACCT_NSHM, 1)) {
			PROC_UNLOCK(td->td_proc);
			return (ENOSPC);
		}
		if (racct_add(td->td_proc, RACCT_SHMSIZE, size)) {
			racct_sub(td->td_proc, RACCT_NSHM, 1);
			PROC_UNLOCK(td->td_proc);
			return (ENOMEM);
		}
		PROC_UNLOCK(td->td_proc);
	}
#endif

	/*
	 * We make sure that we have allocated a pager before we need
	 * to.
	 */
	shm_object = FUNC16(shm_use_phys ? OBJT_PHYS : OBJT_SWAP,
	    0, size, VM_PROT_DEFAULT, 0, cred);
	if (shm_object == NULL) {
#ifdef RACCT
		if (racct_enable) {
			PROC_LOCK(td->td_proc);
			racct_sub(td->td_proc, RACCT_NSHM, 1);
			racct_sub(td->td_proc, RACCT_SHMSIZE, size);
			PROC_UNLOCK(td->td_proc);
		}
#endif
		return (ENOMEM);
	}
	shm_object->pg_color = 0;
	FUNC5(shm_object);
	FUNC14(shm_object, OBJ_ONEMAPPING);
	FUNC15(shm_object, OBJ_COLORED | OBJ_NOSPLIT);
	FUNC6(shm_object);

	shmseg->object = shm_object;
	shmseg->u.shm_perm.cuid = shmseg->u.shm_perm.uid = cred->cr_uid;
	shmseg->u.shm_perm.cgid = shmseg->u.shm_perm.gid = cred->cr_gid;
	shmseg->u.shm_perm.mode = (mode & ACCESSPERMS) | SHMSEG_ALLOCATED;
	shmseg->u.shm_perm.key = uap->key;
	shmseg->u.shm_perm.seq = (shmseg->u.shm_perm.seq + 1) & 0x7fff;
	shmseg->cred = FUNC8(cred);
	shmseg->u.shm_segsz = uap->size;
	shmseg->u.shm_cpid = td->td_proc->p_pid;
	shmseg->u.shm_lpid = shmseg->u.shm_nattch = 0;
	shmseg->u.shm_atime = shmseg->u.shm_dtime = 0;
#ifdef MAC
	mac_sysvshm_create(cred, shmseg);
#endif
	shmseg->u.shm_ctime = time_second;
	shm_committed += FUNC7(size);
	shm_nused++;
	td->td_retval[0] = FUNC0(segnum, shmseg->u.shm_perm);

	return (0);
}