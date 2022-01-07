
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {scalar_t__ msg_qbytes; TYPE_1__ msg_perm; } ;
struct msqid_kernel {TYPE_2__ u; } ;
struct TYPE_6__ {int msgmni; int msgtql; } ;


 int EBUSY ;
 int MSG_LOCKED ;
 int M_MSG ;
 int free (struct msqid_kernel*,int ) ;
 int mac_sysvmsg_destroy (struct msqid_kernel*) ;
 int mac_sysvmsq_destroy (struct msqid_kernel*) ;
 int msg32_syscalls ;
 scalar_t__ msg_prison_slot ;
 int msg_syscalls ;
 struct msqid_kernel* msghdrs ;
 TYPE_3__ msginfo ;
 struct msqid_kernel* msgmaps ;
 struct msqid_kernel* msgpool ;
 int msq_mtx ;
 struct msqid_kernel* msqids ;
 int mtx_destroy (int *) ;
 int osd_jail_deregister (scalar_t__) ;
 int syscall32_helper_unregister (int ) ;
 int syscall_helper_unregister (int ) ;

__attribute__((used)) static int
msgunload()
{
 struct msqid_kernel *msqkptr;
 int msqid;




 syscall_helper_unregister(msg_syscalls);




 for (msqid = 0; msqid < msginfo.msgmni; msqid++) {
  msqkptr = &msqids[msqid];
  if (msqkptr->u.msg_qbytes != 0 ||
      (msqkptr->u.msg_perm.mode & MSG_LOCKED) != 0)
   break;
 }
 if (msqid != msginfo.msgmni)
  return (EBUSY);

 if (msg_prison_slot != 0)
  osd_jail_deregister(msg_prison_slot);






 free(msgpool, M_MSG);
 free(msgmaps, M_MSG);
 free(msghdrs, M_MSG);
 free(msqids, M_MSG);
 mtx_destroy(&msq_mtx);
 return (0);
}
