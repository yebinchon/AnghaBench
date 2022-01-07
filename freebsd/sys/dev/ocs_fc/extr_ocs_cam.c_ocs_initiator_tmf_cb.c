
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_scsi_io_status_e ;
struct TYPE_6__ {int * response_data; int response_data_length; } ;
typedef TYPE_1__ ocs_scsi_cmd_resp_t ;
struct TYPE_7__ {int ocs; } ;
typedef TYPE_2__ ocs_io_t ;
typedef int int32_t ;





 int be32toh (int ) ;
 int ocs_log_test (int ,char*,...) ;
 int ocs_scsi_io_free (TYPE_2__*) ;

__attribute__((used)) static int32_t
ocs_initiator_tmf_cb(ocs_io_t *io, ocs_scsi_io_status_e scsi_status,
  ocs_scsi_cmd_resp_t *rsp, uint32_t flags, void *arg)
{
 int32_t rc = 0;

 switch (scsi_status) {
 case 129:
 case 128:
  break;
 case 130:
  if (rsp->response_data_length == 0) {
   ocs_log_test(io->ocs, "check response without data?!?\n");
   rc = -1;
   break;
  }

  if (rsp->response_data[3] != 0) {
   ocs_log_test(io->ocs, "TMF status %08x\n",
    be32toh(*((uint32_t *)rsp->response_data)));
   rc = -1;
   break;
  }
  break;
 default:
  ocs_log_test(io->ocs, "status=%#x\n", scsi_status);
  rc = -1;
 }

 ocs_scsi_io_free(io);

 return rc;
}
