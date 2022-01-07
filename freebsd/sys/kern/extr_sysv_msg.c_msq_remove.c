
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_qnum; int msg_cbytes; scalar_t__ msg_qbytes; struct msg* __msg_first; } ;
struct msqid_kernel {TYPE_1__ u; int * cred; } ;
struct msg {struct msg* msg_next; scalar_t__ msg_ts; } ;


 int RACCT_MSGQQUEUED ;
 int RACCT_MSGQSIZE ;
 int RACCT_NMSGQ ;
 int crfree (int *) ;
 int mac_sysvmsq_cleanup (struct msqid_kernel*) ;
 int msg_freehdr (struct msg*) ;
 int panic (char*) ;
 int racct_sub_cred (int *,int ,int) ;
 int wakeup (struct msqid_kernel*) ;

__attribute__((used)) static void
msq_remove(struct msqid_kernel *msqkptr)
{
 struct msg *msghdr;

 racct_sub_cred(msqkptr->cred, RACCT_NMSGQ, 1);
 racct_sub_cred(msqkptr->cred, RACCT_MSGQQUEUED, msqkptr->u.msg_qnum);
 racct_sub_cred(msqkptr->cred, RACCT_MSGQSIZE, msqkptr->u.msg_cbytes);
 crfree(msqkptr->cred);
 msqkptr->cred = ((void*)0);


 msghdr = msqkptr->u.__msg_first;
 while (msghdr != ((void*)0)) {
  struct msg *msghdr_tmp;


  msqkptr->u.msg_cbytes -= msghdr->msg_ts;
  msqkptr->u.msg_qnum--;
  msghdr_tmp = msghdr;
  msghdr = msghdr->msg_next;
  msg_freehdr(msghdr_tmp);
 }

 if (msqkptr->u.msg_cbytes != 0)
  panic("msg_cbytes is screwed up");
 if (msqkptr->u.msg_qnum != 0)
  panic("msg_qnum is screwed up");

 msqkptr->u.msg_qbytes = 0;





 wakeup(msqkptr);
}
