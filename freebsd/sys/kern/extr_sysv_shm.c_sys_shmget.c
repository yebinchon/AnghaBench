
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; } ;
struct shmget_args {int shmflg; scalar_t__ key; } ;
struct TYPE_2__ {int cr_prison; } ;


 int ACCESSPERMS ;
 int ENOENT ;
 int ENOSYS ;
 int IPC_CREAT ;
 scalar_t__ IPC_PRIVATE ;
 int SYSVSHM_LOCK () ;
 int SYSVSHM_UNLOCK () ;
 int * shm_find_prison (TYPE_1__*) ;
 int shm_find_segment_by_key (int ,scalar_t__) ;
 int shmget_allocate_segment (struct thread*,struct shmget_args*,int) ;
 int shmget_existing (struct thread*,struct shmget_args*,int,int) ;

int
sys_shmget(struct thread *td, struct shmget_args *uap)
{
 int segnum, mode;
 int error;

 if (shm_find_prison(td->td_ucred) == ((void*)0))
  return (ENOSYS);
 mode = uap->shmflg & ACCESSPERMS;
 SYSVSHM_LOCK();
 if (uap->key == IPC_PRIVATE) {
  error = shmget_allocate_segment(td, uap, mode);
 } else {
  segnum = shm_find_segment_by_key(td->td_ucred->cr_prison,
      uap->key);
  if (segnum >= 0)
   error = shmget_existing(td, uap, mode, segnum);
  else if ((uap->shmflg & IPC_CREAT) == 0)
   error = ENOENT;
  else
   error = shmget_allocate_segment(td, uap, mode);
 }
 SYSVSHM_UNLOCK();
 return (error);
}
