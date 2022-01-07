
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_node_t ;
typedef int int32_t ;


 int OCS_EVT_RESUME ;
 int ocs_assert (int ,int) ;
 int ocs_node_post_event (int *,int ,int *) ;

int32_t
ocs_node_resume(ocs_node_t *node)
{
 ocs_assert(node != ((void*)0), -1);

 ocs_node_post_event(node, OCS_EVT_RESUME, ((void*)0));

 return 0;
}
