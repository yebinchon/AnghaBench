
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int * label; } ;


 int MPC_OBJECT_SYSVMSQ ;
 int mac_labeled ;
 int * mac_sysv_msgqueue_label_alloc () ;

void
mac_sysvmsq_init(struct msqid_kernel *msqkptr)
{

 if (mac_labeled & MPC_OBJECT_SYSVMSQ)
  msqkptr->label = mac_sysv_msgqueue_label_alloc();
 else
  msqkptr->label = ((void*)0);
}
