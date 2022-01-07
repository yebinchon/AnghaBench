
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union semun {int val; int array; struct semid_ds* buf; } ;
typedef int u_short ;
struct ucred {int cr_prison; } ;
struct thread {struct ucred* td_ucred; } ;
struct TYPE_11__ {int mode; int gid; int uid; } ;
struct TYPE_12__ {int sem_nsems; TYPE_2__* __sem_base; TYPE_4__ sem_perm; int sem_ctime; } ;
struct semid_kernel {TYPE_5__ u; TYPE_1__* cred; } ;
struct TYPE_13__ {int mode; void* key; int gid; int uid; } ;
struct semid_ds {TYPE_7__ sem_perm; } ;
struct prison {int dummy; } ;
struct mtx {int dummy; } ;
typedef int register_t ;
struct TYPE_10__ {int semmni; int semvmx; } ;
struct TYPE_9__ {int semncnt; int sempid; int semval; int semzcnt; } ;
struct TYPE_8__ {int cr_prison; } ;


 int AUDIT_ARG_SVIPC_CMD (int) ;
 int AUDIT_ARG_SVIPC_ID (int) ;
 int AUDIT_ARG_SVIPC_PERM (TYPE_7__*) ;
 int DPRINTF (char*) ;
 int EINVAL ;
 int ENOSYS ;
 int ERANGE ;





 int IPCID_TO_IX (int) ;
 int IPC_M ;
 void* IPC_PRIVATE ;
 int IPC_R ;



 int IPC_W ;
 int IXSEQ_TO_IPCID (int,TYPE_4__) ;
 int KASSERT (int,char*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int SEMUNDO_LOCK () ;
 int SEMUNDO_UNLOCK () ;
 int SEM_ALLOC ;



 int bcopy (TYPE_5__*,struct semid_ds*,int) ;
 int copyin (int ,int*,int) ;
 int copyout (int*,int ,int) ;
 int free (int*,int ) ;
 int ipcperm (struct thread*,TYPE_4__*,int ) ;
 int mac_sysvsem_check_semctl (struct ucred*,struct semid_kernel*,int) ;
 int* malloc (int,int ,int ) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int * sem ;
 struct prison* sem_find_prison (struct ucred*) ;
 struct mtx sem_mtx ;
 int sem_prison_cansee (struct prison*,struct semid_kernel*) ;
 int sem_remove (int,struct ucred*) ;
 struct semid_kernel* sema ;
 struct mtx* sema_mtx ;
 TYPE_3__ seminfo ;
 int semundo_clear (int,int) ;
 int semvalid (int,struct prison*,struct semid_kernel*) ;
 int time_second ;
 int wakeup (struct semid_kernel*) ;

int
kern_semctl(struct thread *td, int semid, int semnum, int cmd,
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

 DPRINTF(("call to semctl(%d, %d, %d, 0x%p)\n",
     semid, semnum, cmd, arg));

 AUDIT_ARG_SVIPC_CMD(cmd);
 AUDIT_ARG_SVIPC_ID(semid);

 rpr = sem_find_prison(td->td_ucred);
 if (sem == ((void*)0))
  return (ENOSYS);

 array = ((void*)0);

 switch(cmd) {
 case 130:




  if (semid < 0 || semid >= seminfo.semmni)
   return (EINVAL);
  semakptr = &sema[semid];
  sema_mtxp = &sema_mtx[semid];
  mtx_lock(sema_mtxp);
  if ((semakptr->u.sem_perm.mode & SEM_ALLOC) == 0) {
   error = EINVAL;
   goto done2;
  }
  if ((error = sem_prison_cansee(rpr, semakptr)))
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_R)))
   goto done2;





  bcopy(&semakptr->u, arg->buf, sizeof(struct semid_ds));
  if (cred->cr_prison != semakptr->cred->cr_prison)
   arg->buf->sem_perm.key = IPC_PRIVATE;
  *rval = IXSEQ_TO_IPCID(semid, semakptr->u.sem_perm);
  mtx_unlock(sema_mtxp);
  return (0);
 }

 semidx = IPCID_TO_IX(semid);
 if (semidx < 0 || semidx >= seminfo.semmni)
  return (EINVAL);

 semakptr = &sema[semidx];
 sema_mtxp = &sema_mtx[semidx];
 if (cmd == 133)
  mtx_lock(&sem_mtx);
 mtx_lock(sema_mtxp);







 error = 0;
 *rval = 0;

 switch (cmd) {
 case 133:
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_M)))
   goto done2;
  sem_remove(semidx, cred);
  break;

 case 132:
  AUDIT_ARG_SVIPC_PERM(&arg->buf->sem_perm);
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_M)))
   goto done2;
  sbuf = arg->buf;
  semakptr->u.sem_perm.uid = sbuf->sem_perm.uid;
  semakptr->u.sem_perm.gid = sbuf->sem_perm.gid;
  semakptr->u.sem_perm.mode = (semakptr->u.sem_perm.mode &
      ~0777) | (sbuf->sem_perm.mode & 0777);
  semakptr->u.sem_ctime = time_second;
  break;

 case 131:
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_R)))
   goto done2;
  bcopy(&semakptr->u, arg->buf, sizeof(struct semid_ds));
  if (cred->cr_prison != semakptr->cred->cr_prison)
   arg->buf->sem_perm.key = IPC_PRIVATE;
  break;

 case 137:
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_R)))
   goto done2;
  if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
   error = EINVAL;
   goto done2;
  }
  *rval = semakptr->u.__sem_base[semnum].semncnt;
  break;

 case 136:
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_R)))
   goto done2;
  if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
   error = EINVAL;
   goto done2;
  }
  *rval = semakptr->u.__sem_base[semnum].sempid;
  break;

 case 135:
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_R)))
   goto done2;
  if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
   error = EINVAL;
   goto done2;
  }
  *rval = semakptr->u.__sem_base[semnum].semval;
  break;

 case 138:
  count = semakptr->u.sem_nsems;
  mtx_unlock(sema_mtxp);
  array = malloc(sizeof(*array) * count, M_TEMP, M_WAITOK);
  mtx_lock(sema_mtxp);
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  KASSERT(count == semakptr->u.sem_nsems, ("nsems changed"));
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_R)))
   goto done2;
  for (i = 0; i < semakptr->u.sem_nsems; i++)
   array[i] = semakptr->u.__sem_base[i].semval;
  mtx_unlock(sema_mtxp);
  error = copyout(array, arg->array, count * sizeof(*array));
  mtx_lock(sema_mtxp);
  break;

 case 134:
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_R)))
   goto done2;
  if (semnum < 0 || semnum >= semakptr->u.sem_nsems) {
   error = EINVAL;
   goto done2;
  }
  *rval = semakptr->u.__sem_base[semnum].semzcnt;
  break;

 case 128:
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_W)))
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
  SEMUNDO_LOCK();
  semundo_clear(semidx, semnum);
  SEMUNDO_UNLOCK();
  wakeup(semakptr);
  break;

 case 129:




  count = semakptr->u.sem_nsems;
  mtx_unlock(sema_mtxp);
  array = malloc(sizeof(*array) * count, M_TEMP, M_WAITOK);
  error = copyin(arg->array, array, count * sizeof(*array));
  mtx_lock(sema_mtxp);
  if (error)
   break;
  if ((error = semvalid(semid, rpr, semakptr)) != 0)
   goto done2;
  KASSERT(count == semakptr->u.sem_nsems, ("nsems changed"));
  if ((error = ipcperm(td, &semakptr->u.sem_perm, IPC_W)))
   goto done2;
  for (i = 0; i < semakptr->u.sem_nsems; i++) {
   usval = array[i];
   if (usval > seminfo.semvmx) {
    error = ERANGE;
    break;
   }
   semakptr->u.__sem_base[i].semval = usval;
  }
  SEMUNDO_LOCK();
  semundo_clear(semidx, -1);
  SEMUNDO_UNLOCK();
  wakeup(semakptr);
  break;

 default:
  error = EINVAL;
  break;
 }

done2:
 mtx_unlock(sema_mtxp);
 if (cmd == 133)
  mtx_unlock(&sem_mtx);
 if (array != ((void*)0))
  free(array, M_TEMP);
 return(error);
}
