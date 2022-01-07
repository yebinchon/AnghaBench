
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ocs_sport_t ;
struct TYPE_8__ {TYPE_1__* ocs; } ;
typedef TYPE_2__ ocs_node_t ;
typedef int int32_t ;
struct TYPE_7__ {int nodedb_mask; } ;


 int FALSE ;
 int FC_ADDR_NAMESERVER ;
 int OCS_NODEDB_PAUSE_NAMESERVER ;
 int __ocs_ns_init ;
 TYPE_2__* ocs_node_alloc (int *,int ,int ,int ) ;
 TYPE_2__* ocs_node_find (int *,int ) ;
 int ocs_node_pause (TYPE_2__*,int ) ;
 int ocs_node_transition (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int32_t
ocs_start_ns_node(ocs_sport_t *sport)
{
 ocs_node_t *ns;


 ns = ocs_node_find(sport, FC_ADDR_NAMESERVER);
 if (ns == ((void*)0)) {
  ns = ocs_node_alloc(sport, FC_ADDR_NAMESERVER, FALSE, FALSE);
  if (ns == ((void*)0)) {
   return -1;
  }
 }




 if (ns->ocs->nodedb_mask & OCS_NODEDB_PAUSE_NAMESERVER) {
  ocs_node_pause(ns, __ocs_ns_init);
 } else {
  ocs_node_transition(ns, __ocs_ns_init, ((void*)0));
 }
 return 0;
}
