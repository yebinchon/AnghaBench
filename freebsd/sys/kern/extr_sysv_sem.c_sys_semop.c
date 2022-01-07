
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {scalar_t__* td_retval; TYPE_3__* td_proc; int td_ucred; } ;
struct semop_args {int semid; size_t nsops; int sops; } ;
struct TYPE_10__ {int mode; unsigned short seq; } ;
struct TYPE_7__ {size_t sem_nsems; int sem_otime; struct sem* __sem_base; TYPE_4__ sem_perm; } ;
struct semid_kernel {TYPE_1__ u; } ;
struct sembuf {size_t sem_num; int sem_flg; scalar_t__ sem_op; } ;
struct sem_undo {int dummy; } ;
struct sem {scalar_t__ semval; scalar_t__ semzcnt; scalar_t__ semncnt; int sempid; } ;
struct prison {int dummy; } ;
struct mtx {int dummy; } ;
typedef int sops ;
struct TYPE_9__ {int p_pid; } ;
struct TYPE_8__ {int semmni; size_t semopm; scalar_t__ semvmx; } ;


 int AUDIT_ARG_SVIPC_ID (int) ;
 int DPRINTF (char*) ;
 int E2BIG ;
 int EAGAIN ;
 int EFBIG ;
 int EIDRM ;
 int EINTR ;
 int EINVAL ;
 int ENOSYS ;
 int ERANGE ;
 int IPCID_TO_IX (int) ;
 unsigned short IPCID_TO_SEQ (int) ;
 int IPC_NOWAIT ;
 int M_SEM ;
 int M_TEMP ;
 int M_WAITOK ;
 int PCATCH ;
 int PROC_LOCK (TYPE_3__*) ;
 int PROC_UNLOCK (TYPE_3__*) ;
 int PZERO ;
 int RACCT_NSEMOP ;
 int SEMUNDO_LOCK () ;
 int SEMUNDO_UNLOCK () ;
 size_t SEM_A ;
 int SEM_ALLOC ;
 size_t SEM_R ;
 int SEM_UNDO ;
 int SMALL_SOPS ;
 int copyin (int ,struct sembuf*,size_t) ;
 int free (struct sembuf*,int ) ;
 int ipcperm (struct thread*,TYPE_4__*,size_t) ;
 int mac_sysvsem_check_semop (int ,struct semid_kernel*,size_t) ;
 struct sembuf* malloc (size_t,int ,int ) ;
 int msleep (struct semid_kernel*,struct mtx*,int,char*,int ) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int panic (char*) ;
 scalar_t__ racct_enable ;
 size_t racct_get_available (TYPE_3__*,int ) ;
 int * sem ;
 struct prison* sem_find_prison (int ) ;
 int sem_prison_cansee (struct prison*,struct semid_kernel*) ;
 struct semid_kernel* sema ;
 struct mtx* sema_mtx ;
 TYPE_2__ seminfo ;
 int semundo_adjust (struct thread*,struct sem_undo**,int,unsigned short,size_t,int) ;
 int time_second ;
 int wakeup (struct semid_kernel*) ;

int
sys_semop(struct thread *td, struct semop_args *uap)
{

 struct sembuf small_sops[8];
 int semid = uap->semid;
 size_t nsops = uap->nsops;
 struct prison *rpr;
 struct sembuf *sops;
 struct semid_kernel *semakptr;
 struct sembuf *sopptr = ((void*)0);
 struct sem *semptr = ((void*)0);
 struct sem_undo *suptr;
 struct mtx *sema_mtxp;
 size_t i, j, k;
 int error;
 int do_wakeup, do_undos;
 unsigned short seq;




 DPRINTF(("call to semop(%d, %p, %u)\n", semid, sops, nsops));

 AUDIT_ARG_SVIPC_ID(semid);

 rpr = sem_find_prison(td->td_ucred);
 if (sem == ((void*)0))
  return (ENOSYS);

 semid = IPCID_TO_IX(semid);

 if (semid < 0 || semid >= seminfo.semmni)
  return (EINVAL);


 if (nsops <= 8)
  sops = small_sops;
 else if (nsops > seminfo.semopm) {
  DPRINTF(("too many sops (max=%d, nsops=%d)\n", seminfo.semopm,
      nsops));
  return (E2BIG);
 } else {
  sops = malloc(nsops * sizeof(*sops), M_TEMP, M_WAITOK);
 }
 if ((error = copyin(uap->sops, sops, nsops * sizeof(sops[0]))) != 0) {
  DPRINTF(("error = %d from copyin(%p, %p, %d)\n", error,
      uap->sops, sops, nsops * sizeof(sops[0])));
  if (sops != small_sops)
   free(sops, M_SEM);
  return (error);
 }

 semakptr = &sema[semid];
 sema_mtxp = &sema_mtx[semid];
 mtx_lock(sema_mtxp);
 if ((semakptr->u.sem_perm.mode & SEM_ALLOC) == 0) {
  error = EINVAL;
  goto done2;
 }
 seq = semakptr->u.sem_perm.seq;
 if (seq != IPCID_TO_SEQ(uap->semid)) {
  error = EINVAL;
  goto done2;
 }
 if ((error = sem_prison_cansee(rpr, semakptr)) != 0)
  goto done2;





 j = 0;
 do_undos = 0;
 for (i = 0; i < nsops; i++) {
  sopptr = &sops[i];
  if (sopptr->sem_num >= semakptr->u.sem_nsems) {
   error = EFBIG;
   goto done2;
  }
  if (sopptr->sem_flg & SEM_UNDO && sopptr->sem_op != 0)
   do_undos = 1;
  j |= (sopptr->sem_op == 0) ? SEM_R : SEM_A;
 }

 if ((error = ipcperm(td, &semakptr->u.sem_perm, j))) {
  DPRINTF(("error = %d from ipaccess\n", error));
  goto done2;
 }
 for (;;) {
  do_wakeup = 0;
  error = 0;

  for (i = 0; i < nsops; i++) {
   sopptr = &sops[i];
   semptr = &semakptr->u.__sem_base[sopptr->sem_num];

   DPRINTF((
       "semop:  semakptr=%p, __sem_base=%p, "
       "semptr=%p, sem[%d]=%d : op=%d, flag=%s\n",
       semakptr, semakptr->u.__sem_base, semptr,
       sopptr->sem_num, semptr->semval, sopptr->sem_op,
       (sopptr->sem_flg & IPC_NOWAIT) ?
       "nowait" : "wait"));

   if (sopptr->sem_op < 0) {
    if (semptr->semval + sopptr->sem_op < 0) {
     DPRINTF(("semop:  can't do it now\n"));
     break;
    } else {
     semptr->semval += sopptr->sem_op;
     if (semptr->semval == 0 &&
         semptr->semzcnt > 0)
      do_wakeup = 1;
    }
   } else if (sopptr->sem_op == 0) {
    if (semptr->semval != 0) {
     DPRINTF(("semop:  not zero now\n"));
     break;
    }
   } else if (semptr->semval + sopptr->sem_op >
       seminfo.semvmx) {
    error = ERANGE;
    break;
   } else {
    if (semptr->semncnt > 0)
     do_wakeup = 1;
    semptr->semval += sopptr->sem_op;
   }
  }




  if (i >= nsops)
   goto done;




  DPRINTF(("semop:  rollback 0 through %d\n", i-1));
  for (j = 0; j < i; j++)
   semakptr->u.__sem_base[sops[j].sem_num].semval -=
       sops[j].sem_op;


  if (error != 0)
   goto done2;





  if (sopptr->sem_flg & IPC_NOWAIT) {
   error = EAGAIN;
   goto done2;
  }

  if (sopptr->sem_op == 0)
   semptr->semzcnt++;
  else
   semptr->semncnt++;

  DPRINTF(("semop:  good night!\n"));
  error = msleep(semakptr, sema_mtxp, (PZERO - 4) | PCATCH,
      "semwait", 0);
  DPRINTF(("semop:  good morning (error=%d)!\n", error));





  seq = semakptr->u.sem_perm.seq;
  if ((semakptr->u.sem_perm.mode & SEM_ALLOC) == 0 ||
      seq != IPCID_TO_SEQ(uap->semid)) {
   error = EIDRM;
   goto done2;
  }






  semptr = &semakptr->u.__sem_base[sopptr->sem_num];





  if (sopptr->sem_op == 0)
   semptr->semzcnt--;
  else
   semptr->semncnt--;






  if (error != 0) {
   error = EINTR;
   goto done2;
  }
  DPRINTF(("semop:  good morning!\n"));
 }

done:



 if (do_undos) {
  SEMUNDO_LOCK();
  suptr = ((void*)0);
  for (i = 0; i < nsops; i++) {




   int adjval;

   if ((sops[i].sem_flg & SEM_UNDO) == 0)
    continue;
   adjval = sops[i].sem_op;
   if (adjval == 0)
    continue;
   error = semundo_adjust(td, &suptr, semid, seq,
       sops[i].sem_num, -adjval);
   if (error == 0)
    continue;
   for (j = 0; j < i; j++) {
    k = i - j - 1;
    if ((sops[k].sem_flg & SEM_UNDO) == 0)
     continue;
    adjval = sops[k].sem_op;
    if (adjval == 0)
     continue;
    if (semundo_adjust(td, &suptr, semid, seq,
        sops[k].sem_num, adjval) != 0)
     panic("semop - can't undo undos");
   }

   for (j = 0; j < nsops; j++)
    semakptr->u.__sem_base[sops[j].sem_num].semval -=
        sops[j].sem_op;

   DPRINTF(("error = %d from semundo_adjust\n", error));
   SEMUNDO_UNLOCK();
   goto done2;
  }
  SEMUNDO_UNLOCK();
 }


 for (i = 0; i < nsops; i++) {
  sopptr = &sops[i];
  semptr = &semakptr->u.__sem_base[sopptr->sem_num];
  semptr->sempid = td->td_proc->p_pid;
 }
 semakptr->u.sem_otime = time_second;





 if (do_wakeup) {
  DPRINTF(("semop:  doing wakeup\n"));
  wakeup(semakptr);
  DPRINTF(("semop:  back from wakeup\n"));
 }
 DPRINTF(("semop:  done\n"));
 td->td_retval[0] = 0;
done2:
 mtx_unlock(sema_mtxp);
 if (sops != small_sops)
  free(sops, M_SEM);
 return (error);
}
