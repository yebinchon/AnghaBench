
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active_ios_lock; int io_alloc_enabled; } ;
typedef TYPE_1__ ocs_node_t ;


 int FALSE ;
 int ocs_assert (int ) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

void
ocs_scsi_io_alloc_disable(ocs_node_t *node)
{
 ocs_assert(node != ((void*)0));
 ocs_lock(&node->active_ios_lock);
  node->io_alloc_enabled = FALSE;
 ocs_unlock(&node->active_ios_lock);
}
