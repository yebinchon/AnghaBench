
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ucred {scalar_t__ cr_prison; int cr_gid; int cr_uid; } ;
struct thread {int * td_retval; int td_proc; struct ucred* td_ucred; } ;
struct TYPE_9__ {int key; int mode; int seq; int gid; int cgid; int uid; int cuid; } ;
struct TYPE_7__ {scalar_t__ msg_qbytes; TYPE_3__ msg_perm; int msg_ctime; scalar_t__ msg_rtime; scalar_t__ msg_stime; scalar_t__ msg_lrpid; scalar_t__ msg_lspid; scalar_t__ msg_qnum; scalar_t__ msg_cbytes; int * __msg_last; int * __msg_first; } ;
struct msqid_kernel {TYPE_1__ u; TYPE_4__* cred; } ;
struct msgget_args {int key; int msgflg; } ;
struct TYPE_10__ {scalar_t__ cr_prison; } ;
struct TYPE_8__ {int msgmni; scalar_t__ msgmnb; } ;


 int AUDIT_ARG_SVIPC_ID (int ) ;
 int AUDIT_ARG_SVIPC_PERM (TYPE_3__*) ;
 int DPRINTF (char*) ;
 int EEXIST ;
 int ENOENT ;
 int ENOSPC ;
 int ENOSYS ;
 int IPC_CREAT ;
 int IPC_EXCL ;
 int IPC_PRIVATE ;
 int IXSEQ_TO_IPCID (int,TYPE_3__) ;
 int MSG_LOCKED ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int RACCT_NMSGQ ;
 TYPE_4__* crhold (struct ucred*) ;
 int ipcperm (struct thread*,TYPE_3__*,int) ;
 int mac_sysvmsq_check_msqget (struct ucred*,struct msqid_kernel*) ;
 int mac_sysvmsq_create (struct ucred*,struct msqid_kernel*) ;
 int * msg_find_prison (struct ucred*) ;
 TYPE_2__ msginfo ;
 int msq_mtx ;
 struct msqid_kernel* msqids ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int racct_add (int ,int ,int) ;
 scalar_t__ racct_enable ;
 int time_second ;

int
sys_msgget(struct thread *td, struct msgget_args *uap)
{
 int msqid, error = 0;
 int key = uap->key;
 int msgflg = uap->msgflg;
 struct ucred *cred = td->td_ucred;
 struct msqid_kernel *msqkptr = ((void*)0);

 DPRINTF(("msgget(0x%x, 0%o)\n", key, msgflg));

 if (msg_find_prison(cred) == ((void*)0))
  return (ENOSYS);

 mtx_lock(&msq_mtx);
 if (key != IPC_PRIVATE) {
  for (msqid = 0; msqid < msginfo.msgmni; msqid++) {
   msqkptr = &msqids[msqid];
   if (msqkptr->u.msg_qbytes != 0 &&
       msqkptr->cred != ((void*)0) &&
       msqkptr->cred->cr_prison == cred->cr_prison &&
       msqkptr->u.msg_perm.key == key)
    break;
  }
  if (msqid < msginfo.msgmni) {
   DPRINTF(("found public key\n"));
   if ((msgflg & IPC_CREAT) && (msgflg & IPC_EXCL)) {
    DPRINTF(("not exclusive\n"));
    error = EEXIST;
    goto done2;
   }
   AUDIT_ARG_SVIPC_ID(IXSEQ_TO_IPCID(msqid,
       msqkptr->u.msg_perm));
   if ((error = ipcperm(td, &msqkptr->u.msg_perm,
       msgflg & 0700))) {
    DPRINTF(("requester doesn't have 0%o access\n",
        msgflg & 0700));
    goto done2;
   }





   goto found;
  }
 }

 DPRINTF(("need to allocate the msqid_ds\n"));
 if (key == IPC_PRIVATE || (msgflg & IPC_CREAT)) {
  for (msqid = 0; msqid < msginfo.msgmni; msqid++) {






   msqkptr = &msqids[msqid];
   if (msqkptr->u.msg_qbytes == 0 &&
       (msqkptr->u.msg_perm.mode & MSG_LOCKED) == 0)
    break;
  }
  if (msqid == msginfo.msgmni) {
   DPRINTF(("no more msqid_ds's available\n"));
   error = ENOSPC;
   goto done2;
  }
  DPRINTF(("msqid %d is available\n", msqid));
  msqkptr->u.msg_perm.key = key;
  msqkptr->u.msg_perm.cuid = cred->cr_uid;
  msqkptr->u.msg_perm.uid = cred->cr_uid;
  msqkptr->u.msg_perm.cgid = cred->cr_gid;
  msqkptr->u.msg_perm.gid = cred->cr_gid;
  msqkptr->u.msg_perm.mode = (msgflg & 0777);
  msqkptr->cred = crhold(cred);

  msqkptr->u.msg_perm.seq = (msqkptr->u.msg_perm.seq + 1) & 0x7fff;
  msqkptr->u.__msg_first = ((void*)0);
  msqkptr->u.__msg_last = ((void*)0);
  msqkptr->u.msg_cbytes = 0;
  msqkptr->u.msg_qnum = 0;
  msqkptr->u.msg_qbytes = msginfo.msgmnb;
  msqkptr->u.msg_lspid = 0;
  msqkptr->u.msg_lrpid = 0;
  msqkptr->u.msg_stime = 0;
  msqkptr->u.msg_rtime = 0;
  msqkptr->u.msg_ctime = time_second;



  AUDIT_ARG_SVIPC_PERM(&msqkptr->u.msg_perm);
 } else {
  DPRINTF(("didn't find it and wasn't asked to create it\n"));
  error = ENOENT;
  goto done2;
 }

found:

 td->td_retval[0] = IXSEQ_TO_IPCID(msqid, msqkptr->u.msg_perm);
done2:
 mtx_unlock(&msq_mtx);
 return (error);
}
