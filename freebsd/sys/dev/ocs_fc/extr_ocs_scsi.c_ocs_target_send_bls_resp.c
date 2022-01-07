
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ocs_scsi_io_cb_t ;
struct TYPE_8__ {int rx_id; int ox_id; TYPE_6__* payload; } ;
struct TYPE_11__ {TYPE_1__ bls; } ;
struct TYPE_9__ {char* display_name; void* bls_cb_arg; int bls_cb; int hio_type; int io_type; TYPE_6__ iparam; int abort_rx_id; int init_task_tag; } ;
typedef TYPE_2__ ocs_io_t ;
typedef int int32_t ;
struct TYPE_10__ {int high_seq_cnt; int rx_id; int ox_id; } ;
typedef TYPE_3__ fc_ba_acc_payload_t ;


 int OCS_HW_BLS_ACC ;
 int OCS_IO_TYPE_BLS_RESP ;
 int UINT16_MAX ;
 int ocs_assert (TYPE_2__*,int) ;
 int ocs_memset (TYPE_6__*,int ,int) ;
 int ocs_scsi_io_dispatch (TYPE_2__*,int ) ;
 int ocs_target_bls_resp_cb ;

__attribute__((used)) static int32_t
ocs_target_send_bls_resp(ocs_io_t *io, ocs_scsi_io_cb_t cb, void *arg)
{
 int32_t rc;
 fc_ba_acc_payload_t *acc;

 ocs_assert(io, -1);


 ocs_memset(&io->iparam, 0, sizeof(io->iparam));
 io->iparam.bls.ox_id = io->init_task_tag;
 io->iparam.bls.rx_id = io->abort_rx_id;

 acc = (void *)io->iparam.bls.payload;

 ocs_memset(io->iparam.bls.payload, 0, sizeof(io->iparam.bls.payload));
 acc->ox_id = io->iparam.bls.ox_id;
 acc->rx_id = io->iparam.bls.rx_id;
 acc->high_seq_cnt = UINT16_MAX;




 io->io_type = OCS_IO_TYPE_BLS_RESP;
 io->display_name = "bls_rsp";
 io->hio_type = OCS_HW_BLS_ACC;
 io->bls_cb = cb;
 io->bls_cb_arg = arg;


 rc = ocs_scsi_io_dispatch(io, ocs_target_bls_resp_cb);
 return rc;
}
