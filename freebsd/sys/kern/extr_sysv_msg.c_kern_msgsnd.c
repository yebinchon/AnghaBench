
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; scalar_t__* td_retval; int td_ucred; } ;
struct prison {int dummy; } ;
struct TYPE_14__ {scalar_t__ seq; int mode; } ;
struct TYPE_10__ {size_t msg_qbytes; size_t msg_cbytes; int msg_stime; int msg_lspid; int msg_qnum; struct msg* __msg_last; struct msg* __msg_first; TYPE_6__ msg_perm; } ;
struct msqid_kernel {TYPE_1__ u; } ;
struct msg {int msg_spot; size_t msg_ts; long msg_type; struct msg* msg_next; } ;
struct TYPE_13__ {int msgmni; size_t msgssz; short msgseg; } ;
struct TYPE_12__ {int next; } ;
struct TYPE_11__ {int p_pid; } ;


 int AUDIT_ARG_SVIPC_ID (int) ;
 int AUDIT_ARG_SVIPC_PERM (TYPE_6__*) ;
 int DPRINTF (char*) ;
 int EAGAIN ;
 int EIDRM ;
 int EINTR ;
 int EINVAL ;
 int ENOSYS ;
 int EWOULDBLOCK ;
 int IPCID_TO_IX (int) ;
 scalar_t__ IPCID_TO_SEQ (int) ;
 int IPC_NOWAIT ;
 int IPC_W ;
 int MSG_LOCKED ;
 int PCATCH ;
 int PROC_LOCK (TYPE_2__*) ;
 int PROC_UNLOCK (TYPE_2__*) ;
 int PZERO ;
 int RACCT_MSGQQUEUED ;
 int RACCT_MSGQSIZE ;
 int copyin (void const*,int *,size_t) ;
 struct msg* free_msghdrs ;
 int free_msgmaps ;
 int howmany (size_t,size_t) ;
 int hz ;
 int ipcperm (struct thread*,TYPE_6__*,int ) ;
 int mac_sysvmsg_create (int ,struct msqid_kernel*,struct msg*) ;
 int mac_sysvmsq_check_msgmsq (int ,struct msg*,struct msqid_kernel*) ;
 int mac_sysvmsq_check_msqsnd (int ,struct msqid_kernel*) ;
 struct prison* msg_find_prison (int ) ;
 int msg_freehdr (struct msg*) ;
 TYPE_5__ msginfo ;
 TYPE_4__* msgmaps ;
 int * msgpool ;
 int msleep (struct msqid_kernel*,int *,int,char*,int ) ;
 int msq_mtx ;
 int msq_prison_cansee (struct prison*,struct msqid_kernel*) ;
 struct msqid_kernel* msqids ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfree_msgmaps ;
 int panic (char*) ;
 scalar_t__ racct_add (TYPE_2__*,int ,size_t) ;
 scalar_t__ racct_enable ;
 int racct_sub (TYPE_2__*,int ,size_t) ;
 int time_second ;
 int wakeup (struct msqid_kernel*) ;

int
kern_msgsnd(struct thread *td, int msqid, const void *msgp,
    size_t msgsz, int msgflg, long mtype)
{
 int msqix, segs_needed, error = 0;
 struct msqid_kernel *msqkptr;
 struct msg *msghdr;
 struct prison *rpr;
 short next;




 rpr = msg_find_prison(td->td_ucred);
 if (rpr == ((void*)0))
  return (ENOSYS);

 mtx_lock(&msq_mtx);
 AUDIT_ARG_SVIPC_ID(msqid);
 msqix = IPCID_TO_IX(msqid);

 if (msqix < 0 || msqix >= msginfo.msgmni) {
  DPRINTF(("msqid (%d) out of range (0<=msqid<%d)\n", msqix,
      msginfo.msgmni));
  error = EINVAL;
  goto done2;
 }

 msqkptr = &msqids[msqix];
 AUDIT_ARG_SVIPC_PERM(&msqkptr->u.msg_perm);
 if (msqkptr->u.msg_qbytes == 0) {
  DPRINTF(("no such message queue id\n"));
  error = EINVAL;
  goto done2;
 }
 if (msqkptr->u.msg_perm.seq != IPCID_TO_SEQ(msqid)) {
  DPRINTF(("wrong sequence number\n"));
  error = EINVAL;
  goto done2;
 }

 if ((error = msq_prison_cansee(rpr, msqkptr))) {
  DPRINTF(("requester can't see prison\n"));
  goto done2;
 }

 if ((error = ipcperm(td, &msqkptr->u.msg_perm, IPC_W))) {
  DPRINTF(("requester doesn't have write access\n"));
  goto done2;
 }
 segs_needed = howmany(msgsz, msginfo.msgssz);
 DPRINTF(("msgsz=%zu, msgssz=%d, segs_needed=%d\n", msgsz,
     msginfo.msgssz, segs_needed));
 for (;;) {
  int need_more_resources = 0;






  if (msgsz > msqkptr->u.msg_qbytes) {
   DPRINTF(("msgsz > msqkptr->u.msg_qbytes\n"));
   error = EINVAL;
   goto done3;
  }

  if (msqkptr->u.msg_perm.mode & MSG_LOCKED) {
   DPRINTF(("msqid is locked\n"));
   need_more_resources = 1;
  }
  if (msgsz + msqkptr->u.msg_cbytes > msqkptr->u.msg_qbytes) {
   DPRINTF(("msgsz + msg_cbytes > msg_qbytes\n"));
   need_more_resources = 1;
  }
  if (segs_needed > nfree_msgmaps) {
   DPRINTF(("segs_needed > nfree_msgmaps\n"));
   need_more_resources = 1;
  }
  if (free_msghdrs == ((void*)0)) {
   DPRINTF(("no more msghdrs\n"));
   need_more_resources = 1;
  }

  if (need_more_resources) {
   int we_own_it;

   if ((msgflg & IPC_NOWAIT) != 0) {
    DPRINTF(("need more resources but caller "
        "doesn't want to wait\n"));
    error = EAGAIN;
    goto done3;
   }

   if ((msqkptr->u.msg_perm.mode & MSG_LOCKED) != 0) {
    DPRINTF(("we don't own the msqid_ds\n"));
    we_own_it = 0;
   } else {


    DPRINTF(("we own the msqid_ds\n"));
    msqkptr->u.msg_perm.mode |= MSG_LOCKED;
    we_own_it = 1;
   }
   DPRINTF(("msgsnd:  goodnight\n"));
   error = msleep(msqkptr, &msq_mtx, (PZERO - 4) | PCATCH,
       "msgsnd", hz);
   DPRINTF(("msgsnd:  good morning, error=%d\n", error));
   if (we_own_it)
    msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;
   if (error == EWOULDBLOCK) {
    DPRINTF(("msgsnd:  timed out\n"));
    continue;
   }
   if (error != 0) {
    DPRINTF(("msgsnd:  interrupted system call\n"));
    error = EINTR;
    goto done3;
   }





   if (msqkptr->u.msg_qbytes == 0) {
    DPRINTF(("msqid deleted\n"));
    error = EIDRM;
    goto done3;
   }

  } else {
   DPRINTF(("got all the resources that we need\n"));
   break;
  }
 }






 if (msqkptr->u.msg_perm.mode & MSG_LOCKED)
  panic("msg_perm.mode & MSG_LOCKED");
 if (segs_needed > nfree_msgmaps)
  panic("segs_needed > nfree_msgmaps");
 if (msgsz + msqkptr->u.msg_cbytes > msqkptr->u.msg_qbytes)
  panic("msgsz + msg_cbytes > msg_qbytes");
 if (free_msghdrs == ((void*)0))
  panic("no more msghdrs");






 if ((msqkptr->u.msg_perm.mode & MSG_LOCKED) != 0)
  panic("msqid_ds is already locked");
 msqkptr->u.msg_perm.mode |= MSG_LOCKED;





 msghdr = free_msghdrs;
 free_msghdrs = msghdr->msg_next;
 msghdr->msg_spot = -1;
 msghdr->msg_ts = msgsz;
 msghdr->msg_type = mtype;
 while (segs_needed > 0) {
  if (nfree_msgmaps <= 0)
   panic("not enough msgmaps");
  if (free_msgmaps == -1)
   panic("nil free_msgmaps");
  next = free_msgmaps;
  if (next <= -1)
   panic("next too low #1");
  if (next >= msginfo.msgseg)
   panic("next out of range #1");
  DPRINTF(("allocating segment %d to message\n", next));
  free_msgmaps = msgmaps[next].next;
  nfree_msgmaps--;
  msgmaps[next].next = msghdr->msg_spot;
  msghdr->msg_spot = next;
  segs_needed--;
 }





 if (msghdr->msg_type < 1) {
  msg_freehdr(msghdr);
  msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;
  wakeup(msqkptr);
  DPRINTF(("mtype (%ld) < 1\n", msghdr->msg_type));
  error = EINVAL;
  goto done3;
 }





 next = msghdr->msg_spot;
 while (msgsz > 0) {
  size_t tlen;
  if (msgsz > msginfo.msgssz)
   tlen = msginfo.msgssz;
  else
   tlen = msgsz;
  if (next <= -1)
   panic("next too low #2");
  if (next >= msginfo.msgseg)
   panic("next out of range #2");
  mtx_unlock(&msq_mtx);
  if ((error = copyin(msgp, &msgpool[next * msginfo.msgssz],
      tlen)) != 0) {
   mtx_lock(&msq_mtx);
   DPRINTF(("error %d copying in message segment\n",
       error));
   msg_freehdr(msghdr);
   msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;
   wakeup(msqkptr);
   goto done3;
  }
  mtx_lock(&msq_mtx);
  msgsz -= tlen;
  msgp = (const char *)msgp + tlen;
  next = msgmaps[next].next;
 }
 if (next != -1)
  panic("didn't use all the msg segments");





 msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;





 if (msqkptr->u.msg_qbytes == 0) {
  msg_freehdr(msghdr);
  wakeup(msqkptr);
  error = EIDRM;
  goto done3;
 }
 if (msqkptr->u.__msg_first == ((void*)0)) {
  msqkptr->u.__msg_first = msghdr;
  msqkptr->u.__msg_last = msghdr;
 } else {
  msqkptr->u.__msg_last->msg_next = msghdr;
  msqkptr->u.__msg_last = msghdr;
 }
 msqkptr->u.__msg_last->msg_next = ((void*)0);

 msqkptr->u.msg_cbytes += msghdr->msg_ts;
 msqkptr->u.msg_qnum++;
 msqkptr->u.msg_lspid = td->td_proc->p_pid;
 msqkptr->u.msg_stime = time_second;

 wakeup(msqkptr);
 td->td_retval[0] = 0;
done3:
done2:
 mtx_unlock(&msq_mtx);
 return (error);
}
