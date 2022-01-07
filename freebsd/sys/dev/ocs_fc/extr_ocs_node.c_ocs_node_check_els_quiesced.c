
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ els_req_cnt; scalar_t__ els_cmpl_cnt; int attached; int els_io_active_list; } ;
typedef TYPE_1__ ocs_node_t ;


 int __ocs_node_wait_ios_shutdown ;
 int __ocs_node_wait_node_free ;
 int node_printf (TYPE_1__*,char*) ;
 int ocs_assert (TYPE_1__*,int) ;
 scalar_t__ ocs_els_io_list_empty (TYPE_1__*,int *) ;
 int ocs_node_transition (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
ocs_node_check_els_quiesced(ocs_node_t *node)
{
 ocs_assert(node, -1);


 if ((node->els_req_cnt == 0) && (node->els_cmpl_cnt == 0) &&
     ocs_els_io_list_empty(node, &node->els_io_active_list)) {
  if (!node->attached) {

   node_printf(node, "HW node not attached\n");
   ocs_node_transition(node, __ocs_node_wait_ios_shutdown, ((void*)0));
  } else {

   node_printf(node, "HW node still attached\n");
   ocs_node_transition(node, __ocs_node_wait_node_free, ((void*)0));
  }
  return 1;
 }
 return 0;
}
