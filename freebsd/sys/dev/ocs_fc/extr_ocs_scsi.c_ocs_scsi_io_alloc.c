
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int active_ios_lock; int active_ios; struct TYPE_13__* ocs; int io_alloc_failed_count; int io_alloc_enabled; struct TYPE_13__* xport; } ;
typedef TYPE_1__ ocs_xport_t ;
typedef TYPE_1__ ocs_t ;
typedef int ocs_scsi_io_role_e ;
typedef TYPE_1__ ocs_node_t ;
struct TYPE_14__ {char* display_name; void* cmd_tgt; void* cmd_ini; int io_type; TYPE_1__* node; TYPE_1__* ocs; int * hio; int ref; } ;
typedef TYPE_4__ ocs_io_t ;


 void* FALSE ;
 int OCS_IO_TYPE_IO ;


 void* TRUE ;
 int _ocs_scsi_io_free ;
 int ocs_assert (TYPE_1__*,int *) ;
 int ocs_atomic_add_return (int *,int) ;
 TYPE_4__* ocs_io_alloc (TYPE_1__*) ;
 int ocs_list_add_tail (int *,TYPE_4__*) ;
 int ocs_lock (int *) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_ref_init (int *,int ,TYPE_4__*) ;
 int ocs_unlock (int *) ;

ocs_io_t *
ocs_scsi_io_alloc(ocs_node_t *node, ocs_scsi_io_role_e role)
{
 ocs_t *ocs;
 ocs_xport_t *xport;
 ocs_io_t *io;

 ocs_assert(node, ((void*)0));
 ocs_assert(node->ocs, ((void*)0));

 ocs = node->ocs;
 ocs_assert(ocs->xport, ((void*)0));
 xport = ocs->xport;

 ocs_lock(&node->active_ios_lock);

  if (!node->io_alloc_enabled) {
   ocs_unlock(&node->active_ios_lock);
   return ((void*)0);
  }

  io = ocs_io_alloc(ocs);
  if (io == ((void*)0)) {
   ocs_atomic_add_return(&xport->io_alloc_failed_count, 1);
   ocs_unlock(&node->active_ios_lock);
   return ((void*)0);
  }


  ocs_ref_init(&io->ref, _ocs_scsi_io_free, io);

  if (io->hio != ((void*)0)) {
   ocs_log_err(node->ocs, "assertion failed: io->hio is not NULL\n");
   ocs_unlock(&node->active_ios_lock);
   return ((void*)0);
  }


  io->ocs = ocs;
  io->node = node;


  io->io_type = OCS_IO_TYPE_IO;
  io->display_name = "scsi_io";

  switch (role) {
  case 129:
   io->cmd_ini = TRUE;
   io->cmd_tgt = FALSE;
   break;
  case 128:
   io->cmd_ini = FALSE;
   io->cmd_tgt = TRUE;
   break;
  }


  ocs_list_add_tail(&node->active_ios, io);

 ocs_unlock(&node->active_ios_lock);

 return io;
}
