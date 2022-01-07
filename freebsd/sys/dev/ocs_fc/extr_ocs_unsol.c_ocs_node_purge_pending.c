
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pend_frames_lock; int pend_frames; int ocs; } ;
typedef TYPE_1__ ocs_node_t ;
typedef int int32_t ;


 int ocs_purge_pending (int ,int *,int *) ;

int32_t
ocs_node_purge_pending(ocs_node_t *node)
{
 return ocs_purge_pending(node->ocs, &node->pend_frames, &node->pend_frames_lock);
}
