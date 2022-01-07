
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int * td_retval; int td_ucred; } ;
struct TYPE_2__ {scalar_t__ shm_segsz; int shm_perm; } ;
struct shmid_kernel {TYPE_1__ u; } ;
struct shmget_args {int shmflg; scalar_t__ size; } ;


 int EEXIST ;
 int EINVAL ;
 int IPC_CREAT ;
 int IPC_EXCL ;
 int IXSEQ_TO_IPCID (int,int ) ;
 int KASSERT (int,char*) ;
 int SYSVSHM_ASSERT_LOCKED () ;
 int mac_sysvshm_check_shmget (int ,struct shmid_kernel*,int) ;
 int shmalloced ;
 struct shmid_kernel* shmsegs ;

__attribute__((used)) static int
shmget_existing(struct thread *td, struct shmget_args *uap, int mode,
    int segnum)
{
 struct shmid_kernel *shmseg;




 SYSVSHM_ASSERT_LOCKED();
 KASSERT(segnum >= 0 && segnum < shmalloced,
     ("segnum %d shmalloced %d", segnum, shmalloced));
 shmseg = &shmsegs[segnum];
 if ((uap->shmflg & (IPC_CREAT | IPC_EXCL)) == (IPC_CREAT | IPC_EXCL))
  return (EEXIST);





 if (uap->size != 0 && uap->size > shmseg->u.shm_segsz)
  return (EINVAL);
 td->td_retval[0] = IXSEQ_TO_IPCID(segnum, shmseg->u.shm_perm);
 return (0);
}
