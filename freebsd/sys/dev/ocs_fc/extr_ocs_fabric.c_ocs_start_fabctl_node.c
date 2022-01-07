
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_sport_t ;
typedef int ocs_node_t ;
typedef int int32_t ;


 int FALSE ;
 int FC_ADDR_CONTROLLER ;
 int __ocs_fabctl_init ;
 int * ocs_node_alloc (int *,int ,int ,int ) ;
 int * ocs_node_find (int *,int ) ;
 int ocs_node_transition (int *,int ,int *) ;

__attribute__((used)) static int32_t
ocs_start_fabctl_node(ocs_sport_t *sport)
{
 ocs_node_t *fabctl;

 fabctl = ocs_node_find(sport, FC_ADDR_CONTROLLER);
 if (fabctl == ((void*)0)) {
  fabctl = ocs_node_alloc(sport, FC_ADDR_CONTROLLER, FALSE, FALSE);
  if (fabctl == ((void*)0)) {
   return -1;
  }
 }




 ocs_node_transition(fabctl, __ocs_fabctl_init, ((void*)0));
 return 0;
}
