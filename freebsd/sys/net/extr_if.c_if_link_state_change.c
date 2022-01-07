
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_link_state; int if_linktask; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

void
if_link_state_change(struct ifnet *ifp, int link_state)
{

 if (ifp->if_link_state == link_state)
  return;

 ifp->if_link_state = link_state;


 taskqueue_enqueue(taskqueue_swi, &ifp->if_linktask);
}
