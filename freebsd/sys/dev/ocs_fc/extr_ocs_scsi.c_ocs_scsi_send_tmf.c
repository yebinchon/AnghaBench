
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ ocs_scsi_tmf_cmd_e ;
typedef int ocs_scsi_sgl_t ;
typedef int ocs_scsi_rsp_io_cb_t ;
typedef int ocs_node_t ;
struct TYPE_8__ {char* display_name; int ref; void* scsi_ini_cb_arg; int scsi_ini_cb; int send_abts; struct TYPE_8__* io_to_abort; int io_type; } ;
typedef TYPE_1__ ocs_io_t ;
typedef int int32_t ;


 int OCS_HW_IO_INITIATOR_READ ;
 int OCS_IO_TYPE_ABORT ;
 scalar_t__ OCS_SCSI_TMF_ABORT_TASK ;
 int TRUE ;
 int ocs_assert (TYPE_1__*,int) ;
 scalar_t__ ocs_ref_get_unless_zero (int *) ;
 int ocs_ref_put (int *) ;
 int ocs_scsi_abort_io_cb ;
 int ocs_scsi_io_dispatch_abort (TYPE_1__*,int ) ;
 int ocs_scsi_send_io (int ,int *,TYPE_1__*,int ,scalar_t__,int *,int ,int *,int *,int ,int ,int ,int ,void*) ;
 int scsi_io_printf (TYPE_1__*,char*) ;

int32_t
ocs_scsi_send_tmf(ocs_node_t *node, ocs_io_t *io, ocs_io_t *io_to_abort, uint64_t lun, ocs_scsi_tmf_cmd_e tmf,
 ocs_scsi_sgl_t *sgl, uint32_t sgl_count, uint32_t len, ocs_scsi_rsp_io_cb_t cb, void *arg)
{
 int32_t rc;
 ocs_assert(io, -1);

 if (tmf == OCS_SCSI_TMF_ABORT_TASK) {
  ocs_assert(io_to_abort, -1);


  if ((ocs_ref_get_unless_zero(&io_to_abort->ref) == 0)) {

   scsi_io_printf(io, "command no longer active\n");
   return -1;
  }



  io->io_type = OCS_IO_TYPE_ABORT;
  io->display_name = "abort_task";
  io->io_to_abort = io_to_abort;
  io->send_abts = TRUE;
  io->scsi_ini_cb = cb;
  io->scsi_ini_cb_arg = arg;


  rc = ocs_scsi_io_dispatch_abort(io, ocs_scsi_abort_io_cb);
  if (rc) {
   scsi_io_printf(io, "Failed to dispatch abort\n");
   ocs_ref_put(&io->ref);
  }
 } else {
  io->display_name = "tmf";
  rc = ocs_scsi_send_io(OCS_HW_IO_INITIATOR_READ, node, io, lun, tmf, ((void*)0), 0, ((void*)0),
          sgl, sgl_count, len, 0, cb, arg);
 }

 return rc;
}
