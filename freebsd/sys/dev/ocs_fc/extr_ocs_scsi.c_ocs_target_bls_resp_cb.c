
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int * bls_cb_arg; int (* bls_cb ) (TYPE_1__*,int ,int ,void*) ;struct TYPE_7__* ocs; } ;
typedef TYPE_1__ ocs_t ;
typedef int ocs_scsi_io_status_e ;
typedef int (* ocs_scsi_io_cb_t ) (TYPE_1__*,int ,int ,void*) ;
typedef int ocs_remote_node_t ;
typedef TYPE_1__ ocs_io_t ;
typedef int ocs_hw_io_t ;
typedef int int32_t ;


 int OCS_SCSI_STATUS_ERROR ;
 int OCS_SCSI_STATUS_GOOD ;
 int io_error_log (TYPE_1__*,char*,int ,int ) ;
 int ocs_assert (TYPE_1__*,int) ;
 int ocs_scsi_check_pending (TYPE_1__*) ;

__attribute__((used)) static int32_t
ocs_target_bls_resp_cb(ocs_hw_io_t *hio, ocs_remote_node_t *rnode, uint32_t length, int32_t status, uint32_t ext_status, void *app)
{
 ocs_io_t *io = app;
 ocs_t *ocs;
 ocs_scsi_io_status_e bls_status;

 ocs_assert(io, -1);
 ocs_assert(io->ocs, -1);

 ocs = io->ocs;


 if (status) {
  io_error_log(io, "s=%#x x=%#x\n", status, ext_status);
  bls_status = OCS_SCSI_STATUS_ERROR;
 } else {
  bls_status = OCS_SCSI_STATUS_GOOD;
 }

 if (io->bls_cb) {
  ocs_scsi_io_cb_t bls_cb = io->bls_cb;
  void *bls_cb_arg = io->bls_cb_arg;

  io->bls_cb = ((void*)0);
  io->bls_cb_arg = ((void*)0);


  bls_cb(io, bls_status, 0, bls_cb_arg);
 }

 ocs_scsi_check_pending(ocs);
 return 0;
}
