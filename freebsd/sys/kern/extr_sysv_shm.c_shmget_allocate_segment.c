
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef TYPE_2__* vm_object_t ;
struct ucred {int cr_gid; int cr_uid; } ;
struct thread {int * td_retval; TYPE_7__* td_proc; struct ucred* td_ucred; } ;
struct TYPE_14__ {int mode; int seq; int key; int gid; int cgid; int uid; int cuid; } ;
struct TYPE_15__ {TYPE_13__ shm_perm; int shm_ctime; scalar_t__ shm_dtime; scalar_t__ shm_atime; scalar_t__ shm_nattch; scalar_t__ shm_lpid; int shm_cpid; int shm_segsz; } ;
struct shmid_kernel {TYPE_1__ u; int cred; TYPE_2__* object; } ;
struct shmget_args {int size; int key; } ;
struct TYPE_18__ {int p_pid; } ;
struct TYPE_17__ {scalar_t__ shmmni; scalar_t__ shmall; int shmmax; int shmmin; } ;
struct TYPE_16__ {scalar_t__ pg_color; } ;


 int ACCESSPERMS ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int IXSEQ_TO_IPCID (int,TYPE_13__) ;
 int KASSERT (int,char*) ;
 int OBJT_PHYS ;
 int OBJT_SWAP ;
 int OBJ_COLORED ;
 int OBJ_NOSPLIT ;
 int OBJ_ONEMAPPING ;
 int PROC_LOCK (TYPE_7__*) ;
 int PROC_UNLOCK (TYPE_7__*) ;
 int RACCT_NSHM ;
 int RACCT_SHMSIZE ;
 int SHMSEG_ALLOCATED ;
 int SHMSEG_FREE ;
 int SYSVSHM_ASSERT_LOCKED () ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int VM_PROT_DEFAULT ;
 scalar_t__ btoc (size_t) ;
 int crhold (struct ucred*) ;
 int mac_sysvshm_create (struct ucred*,struct shmid_kernel*) ;
 scalar_t__ racct_add (TYPE_7__*,int ,size_t) ;
 scalar_t__ racct_enable ;
 int racct_sub (TYPE_7__*,int ,size_t) ;
 size_t round_page (int ) ;
 scalar_t__ shm_committed ;
 int shm_last_free ;
 scalar_t__ shm_nused ;
 scalar_t__ shm_use_phys ;
 int shmalloced ;
 TYPE_6__ shminfo ;
 int shmrealloc () ;
 struct shmid_kernel* shmsegs ;
 int time_second ;
 int vm_object_clear_flag (TYPE_2__*,int ) ;
 int vm_object_set_flag (TYPE_2__*,int) ;
 TYPE_2__* vm_pager_allocate (int ,int ,size_t,int ,int ,struct ucred*) ;

__attribute__((used)) static int
shmget_allocate_segment(struct thread *td, struct shmget_args *uap, int mode)
{
 struct ucred *cred = td->td_ucred;
 struct shmid_kernel *shmseg;
 vm_object_t shm_object;
 int i, segnum;
 size_t size;

 SYSVSHM_ASSERT_LOCKED();

 if (uap->size < shminfo.shmmin || uap->size > shminfo.shmmax)
  return (EINVAL);
 if (shm_nused >= shminfo.shmmni)
  return (ENOSPC);
 size = round_page(uap->size);
 if (shm_committed + btoc(size) > shminfo.shmall)
  return (ENOMEM);
 if (shm_last_free < 0) {
  shmrealloc();
  for (i = 0; i < shmalloced; i++)
   if (shmsegs[i].u.shm_perm.mode & SHMSEG_FREE)
    break;
  if (i == shmalloced)
   return (ENOSPC);
  segnum = i;
 } else {
  segnum = shm_last_free;
  shm_last_free = -1;
 }
 KASSERT(segnum >= 0 && segnum < shmalloced,
     ("segnum %d shmalloced %d", segnum, shmalloced));
 shmseg = &shmsegs[segnum];
 shm_object = vm_pager_allocate(shm_use_phys ? OBJT_PHYS : OBJT_SWAP,
     0, size, VM_PROT_DEFAULT, 0, cred);
 if (shm_object == ((void*)0)) {
  return (ENOMEM);
 }
 shm_object->pg_color = 0;
 VM_OBJECT_WLOCK(shm_object);
 vm_object_clear_flag(shm_object, OBJ_ONEMAPPING);
 vm_object_set_flag(shm_object, OBJ_COLORED | OBJ_NOSPLIT);
 VM_OBJECT_WUNLOCK(shm_object);

 shmseg->object = shm_object;
 shmseg->u.shm_perm.cuid = shmseg->u.shm_perm.uid = cred->cr_uid;
 shmseg->u.shm_perm.cgid = shmseg->u.shm_perm.gid = cred->cr_gid;
 shmseg->u.shm_perm.mode = (mode & ACCESSPERMS) | SHMSEG_ALLOCATED;
 shmseg->u.shm_perm.key = uap->key;
 shmseg->u.shm_perm.seq = (shmseg->u.shm_perm.seq + 1) & 0x7fff;
 shmseg->cred = crhold(cred);
 shmseg->u.shm_segsz = uap->size;
 shmseg->u.shm_cpid = td->td_proc->p_pid;
 shmseg->u.shm_lpid = shmseg->u.shm_nattch = 0;
 shmseg->u.shm_atime = shmseg->u.shm_dtime = 0;



 shmseg->u.shm_ctime = time_second;
 shm_committed += btoc(size);
 shm_nused++;
 td->td_retval[0] = IXSEQ_TO_IPCID(segnum, shmseg->u.shm_perm);

 return (0);
}
