
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_9__ {int active_ios_lock; int active_ios; int io_alloc_enabled; } ;
typedef TYPE_1__ ocs_node_t ;
struct TYPE_10__ {TYPE_1__* node; int display_name; int * ocs; } ;
typedef TYPE_2__ ocs_io_t ;


 int OCS_EVT_NODE_ACTIVE_IO_LIST_EMPTY ;
 int ocs_assert (int ) ;
 int ocs_io_busy (TYPE_2__*) ;
 int ocs_io_free (int *,TYPE_2__*) ;
 scalar_t__ ocs_list_empty (int *) ;
 int ocs_list_remove (int *,TYPE_2__*) ;
 int ocs_lock (int *) ;
 int ocs_node_post_event (TYPE_1__*,int ,int *) ;
 int ocs_unlock (int *) ;
 int scsi_io_trace (TYPE_2__*,char*,TYPE_2__*,int ) ;

__attribute__((used)) static void
_ocs_scsi_io_free(void *arg)
{
 ocs_io_t *io = (ocs_io_t *)arg;
 ocs_t *ocs = io->ocs;
 ocs_node_t *node = io->node;
 int send_empty_event;

 ocs_assert(io != ((void*)0));

 scsi_io_trace(io, "freeing io 0x%p %s\n", io, io->display_name);

 ocs_assert(ocs_io_busy(io));

 ocs_lock(&node->active_ios_lock);
  ocs_list_remove(&node->active_ios, io);
  send_empty_event = (!node->io_alloc_enabled) && ocs_list_empty(&node->active_ios);
 ocs_unlock(&node->active_ios_lock);

 if (send_empty_event) {
  ocs_node_post_event(node, OCS_EVT_NODE_ACTIVE_IO_LIST_EMPTY, ((void*)0));
 }

 io->node = ((void*)0);
 ocs_io_free(ocs, io);

}
