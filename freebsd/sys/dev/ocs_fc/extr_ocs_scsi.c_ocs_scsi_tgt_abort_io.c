
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int io_alloc_failed_count; } ;
typedef TYPE_1__ ocs_xport_t ;
struct TYPE_11__ {char* display_name; int ref; void* abort_cb_arg; int abort_cb; int send_abts; struct TYPE_11__* io_to_abort; int io_type; struct TYPE_11__* node; int cmd_tgt; int * hio; TYPE_1__* xport; struct TYPE_11__* ocs; } ;
typedef TYPE_2__ ocs_t ;
typedef int ocs_scsi_io_cb_t ;
typedef TYPE_2__ ocs_io_t ;
typedef int int32_t ;


 int FALSE ;
 int OCS_IO_TYPE_ABORT ;
 int TRUE ;
 int ocs_assert (TYPE_2__*,int) ;
 int ocs_atomic_add_return (int *,int) ;
 TYPE_2__* ocs_io_alloc (TYPE_2__*) ;
 scalar_t__ ocs_ref_get_unless_zero (int *) ;
 int ocs_ref_put (int *) ;
 int ocs_scsi_io_dispatch_abort (TYPE_2__*,int ) ;
 int ocs_target_abort_cb ;
 int scsi_io_printf (TYPE_2__*,char*) ;

int32_t
ocs_scsi_tgt_abort_io(ocs_io_t *io, ocs_scsi_io_cb_t cb, void *arg)
{
 ocs_t *ocs;
 ocs_xport_t *xport;
 int32_t rc;

 ocs_io_t *abort_io = ((void*)0);
 ocs_assert(io, -1);
 ocs_assert(io->node, -1);
 ocs_assert(io->ocs, -1);

 ocs = io->ocs;
 xport = ocs->xport;


 if ((ocs_ref_get_unless_zero(&io->ref) == 0)) {

  scsi_io_printf(io, "command no longer active\n");
  return -1;
 }






 abort_io = ocs_io_alloc(ocs);
 if (abort_io == ((void*)0)) {
  ocs_atomic_add_return(&xport->io_alloc_failed_count, 1);
  ocs_ref_put(&io->ref);
  return -1;
 }


 ocs_assert(abort_io->hio == ((void*)0), -1);


 abort_io->cmd_tgt = TRUE;
 abort_io->node = io->node;


 abort_io->io_type = OCS_IO_TYPE_ABORT;
 abort_io->display_name = "tgt_abort";
 abort_io->io_to_abort = io;
 abort_io->send_abts = FALSE;
 abort_io->abort_cb = cb;
 abort_io->abort_cb_arg = arg;


 rc = ocs_scsi_io_dispatch_abort(abort_io, ocs_target_abort_cb);
 if (rc) {
  ocs_ref_put(&io->ref);
 }
 return rc;
}
