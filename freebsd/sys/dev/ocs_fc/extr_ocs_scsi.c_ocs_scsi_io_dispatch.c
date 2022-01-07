
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int io_pending_count; int io_total_pending; int io_pending_lock; int io_pending_list; } ;
typedef TYPE_1__ ocs_xport_t ;
struct TYPE_10__ {int hw; TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;
struct TYPE_11__ {scalar_t__ io_type; TYPE_2__* ocs; scalar_t__ low_latency; int * hio; void* hw_cb; scalar_t__ cmd_ini; scalar_t__ cmd_tgt; } ;
typedef TYPE_3__ ocs_io_t ;
typedef int ocs_hw_io_t ;
typedef int int32_t ;


 scalar_t__ OCS_IO_TYPE_ABORT ;
 int ocs_assert (int,int) ;
 int ocs_atomic_add_return (int *,int) ;
 int * ocs_hw_io_alloc (int *) ;
 int ocs_list_add_head (int *,TYPE_3__*) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_list_empty (int *) ;
 int ocs_lock (int *) ;
 int ocs_scsi_check_pending (TYPE_2__*) ;
 int ocs_scsi_io_dispatch_hw_io (TYPE_3__*,int *) ;
 int ocs_unlock (int *) ;

int32_t
ocs_scsi_io_dispatch(ocs_io_t *io, void *cb)
{
 ocs_hw_io_t *hio;
 ocs_t *ocs = io->ocs;
 ocs_xport_t *xport = ocs->xport;

 ocs_assert(io->cmd_tgt || io->cmd_ini, -1);
 ocs_assert((io->io_type != OCS_IO_TYPE_ABORT), -1);
 io->hw_cb = cb;





 if (io->hio != ((void*)0)) {
  return ocs_scsi_io_dispatch_hw_io(io, io->hio);
 }






 ocs_lock(&xport->io_pending_lock);
  if (!ocs_list_empty(&xport->io_pending_list)) {




   if (io->low_latency) {
    ocs_list_add_head(&xport->io_pending_list, io);
   } else {
    ocs_list_add_tail(&xport->io_pending_list, io);
   }
   ocs_unlock(&xport->io_pending_lock);
   ocs_atomic_add_return(&xport->io_pending_count, 1);
   ocs_atomic_add_return(&xport->io_total_pending, 1);


   ocs_scsi_check_pending(ocs);
   return 0;
  }
 ocs_unlock(&xport->io_pending_lock);





 hio = ocs_hw_io_alloc(&io->ocs->hw);
 if (hio == ((void*)0)) {


  ocs_lock(&xport->io_pending_lock);
   ocs_list_add_tail(&xport->io_pending_list, io);
  ocs_unlock(&xport->io_pending_lock);

  ocs_atomic_add_return(&xport->io_total_pending, 1);
  ocs_atomic_add_return(&xport->io_pending_count, 1);
  return 0;
 }


 return ocs_scsi_io_dispatch_hw_io(io, hio);
}
