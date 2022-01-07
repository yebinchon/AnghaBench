
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int * label; } ;


 int MPC_OBJECT_SYSVMSG ;
 int mac_labeled ;
 int * mac_sysv_msgmsg_label_alloc () ;

void
mac_sysvmsg_init(struct msg *msgptr)
{

 if (mac_labeled & MPC_OBJECT_SYSVMSG)
  msgptr->label = mac_sysv_msgmsg_label_alloc();
 else
  msgptr->label = ((void*)0);
}
