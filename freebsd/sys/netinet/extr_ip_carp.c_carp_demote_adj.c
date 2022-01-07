
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CARP_LOG (char*,int,int ,char*) ;
 int V_carp_demotion ;
 int atomic_add_int (int *,int) ;
 int carp_sendall_task ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
carp_demote_adj(int adj, char *reason)
{
 atomic_add_int(&V_carp_demotion, adj);
 CARP_LOG("demoted by %d to %d (%s)\n", adj, V_carp_demotion, reason);
 taskqueue_enqueue(taskqueue_swi, &carp_sendall_task);
}
