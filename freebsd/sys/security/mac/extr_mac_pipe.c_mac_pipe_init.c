
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipepair {int * pp_label; } ;


 int MPC_OBJECT_PIPE ;
 int mac_labeled ;
 int * mac_pipe_label_alloc () ;

void
mac_pipe_init(struct pipepair *pp)
{

 if (mac_labeled & MPC_OBJECT_PIPE)
  pp->pp_label = mac_pipe_label_alloc();
 else
  pp->pp_label = ((void*)0);
}
