
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int * p_label; } ;


 int MPC_OBJECT_PROC ;
 int mac_labeled ;
 int * mac_proc_label_alloc () ;

void
mac_proc_init(struct proc *p)
{

 if (mac_labeled & MPC_OBJECT_PROC)
  p->p_label = mac_proc_label_alloc();
 else
  p->p_label = ((void*)0);
}
