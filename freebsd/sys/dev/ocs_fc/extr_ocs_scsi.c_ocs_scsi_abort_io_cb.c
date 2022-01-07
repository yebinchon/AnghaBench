
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct ocs_hw_io_s {int dummy; } ;
struct TYPE_12__ {int scsi_ini_cb_arg; int (* scsi_ini_cb ) (TYPE_1__*,int ,int *,int ,int ) ;int ref; struct TYPE_12__* io_to_abort; struct TYPE_12__* ocs; } ;
typedef TYPE_1__ ocs_t ;
typedef int ocs_scsi_io_status_e ;
typedef int ocs_remote_node_t ;
typedef TYPE_1__ ocs_io_t ;
typedef int int32_t ;


 int OCS_SCSI_STATUS_ABORTED ;
 int OCS_SCSI_STATUS_ABORT_IN_PROGRESS ;
 int OCS_SCSI_STATUS_ERROR ;
 int OCS_SCSI_STATUS_GOOD ;
 int OCS_SCSI_STATUS_NO_IO ;
 int SLI4_FC_LOCAL_REJECT_ABORT_IN_PROGRESS ;
 int SLI4_FC_LOCAL_REJECT_ABORT_REQUESTED ;
 int SLI4_FC_LOCAL_REJECT_NO_XRI ;


 int ocs_assert (TYPE_1__*,int) ;
 TYPE_1__* ocs_io_busy (TYPE_1__*) ;
 int ocs_log_debug (TYPE_1__*,char*,int ,int ) ;
 int ocs_log_test (TYPE_1__*,char*,int ,int ) ;
 int ocs_ref_put (int *) ;
 int ocs_scsi_check_pending (TYPE_1__*) ;
 int ocs_scsi_io_free (TYPE_1__*) ;
 int ocs_scsi_io_free_ovfl (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ,int *,int ,int ) ;

__attribute__((used)) static int32_t
ocs_scsi_abort_io_cb(struct ocs_hw_io_s *hio, ocs_remote_node_t *rnode, uint32_t len, int32_t status,
 uint32_t ext_status, void *arg)
{
 ocs_io_t *io = arg;
 ocs_t *ocs;
 ocs_scsi_io_status_e scsi_status = OCS_SCSI_STATUS_GOOD;

 ocs_assert(io, -1);
 ocs_assert(ocs_io_busy(io), -1);
 ocs_assert(io->ocs, -1);
 ocs_assert(io->io_to_abort, -1);
 ocs = io->ocs;

 ocs_log_debug(ocs, "status %d ext %d\n", status, ext_status);


 ocs_ref_put(&io->io_to_abort->ref);

 ocs_scsi_io_free_ovfl(io);

 switch (status) {
 case 128:
  scsi_status = OCS_SCSI_STATUS_GOOD;
  break;
 case 129:
  if (ext_status == SLI4_FC_LOCAL_REJECT_ABORT_REQUESTED) {
   scsi_status = OCS_SCSI_STATUS_ABORTED;
  } else if (ext_status == SLI4_FC_LOCAL_REJECT_NO_XRI) {
   scsi_status = OCS_SCSI_STATUS_NO_IO;
  } else if (ext_status == SLI4_FC_LOCAL_REJECT_ABORT_IN_PROGRESS) {
   scsi_status = OCS_SCSI_STATUS_ABORT_IN_PROGRESS;
  } else {
   ocs_log_test(ocs, "Unhandled local reject 0x%x/0x%x\n", status, ext_status);
   scsi_status = OCS_SCSI_STATUS_ERROR;
  }
  break;
 default:
  scsi_status = OCS_SCSI_STATUS_ERROR;
  break;
 }

 if (io->scsi_ini_cb) {
  (*io->scsi_ini_cb)(io, scsi_status, ((void*)0), 0, io->scsi_ini_cb_arg);
 } else {
  ocs_scsi_io_free(io);
 }

 ocs_scsi_check_pending(ocs);
 return 0;
}
