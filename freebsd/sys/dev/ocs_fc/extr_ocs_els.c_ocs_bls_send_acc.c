
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
typedef void* uint16_t ;
struct TYPE_17__ {TYPE_1__* sport; } ;
struct TYPE_19__ {TYPE_2__ rnode; struct TYPE_19__* ocs; } ;
typedef TYPE_4__ ocs_t ;
typedef TYPE_4__ ocs_node_t ;
struct TYPE_18__ {void* rx_id; void* ox_id; TYPE_10__* payload; scalar_t__ s_id; } ;
struct TYPE_15__ {TYPE_3__ bls_sid; } ;
struct TYPE_20__ {char* display_name; TYPE_10__ iparam; void* init_task_tag; int hio_type; int io_type; int cmd_tgt; TYPE_4__* node; TYPE_4__* ocs; } ;
typedef TYPE_6__ ocs_io_t ;
typedef int int32_t ;
struct TYPE_21__ {int high_seq_cnt; void* rx_id; void* ox_id; } ;
typedef TYPE_7__ fc_ba_acc_payload_t ;
struct TYPE_16__ {scalar_t__ fc_id; } ;


 int OCS_HW_BLS_ACC_SID ;
 int OCS_IO_TYPE_BLS_RESP ;
 int TRUE ;
 int UINT16_MAX ;
 scalar_t__ UINT32_MAX ;
 int ocs_assert (TYPE_4__*,int *) ;
 int ocs_bls_send_acc_cb ;
 int ocs_log_err (TYPE_4__*,char*,int ) ;
 int ocs_memset (TYPE_10__*,int ,int) ;
 int ocs_scsi_io_dispatch (TYPE_6__*,int ) ;
 int ocs_scsi_io_free (TYPE_6__*) ;

__attribute__((used)) static ocs_io_t *
ocs_bls_send_acc(ocs_io_t *io, uint32_t s_id, uint16_t ox_id, uint16_t rx_id)
{
 ocs_node_t *node = io->node;
 int32_t rc;
 fc_ba_acc_payload_t *acc;
 ocs_t *ocs;

 ocs_assert(node, ((void*)0));
 ocs_assert(node->ocs, ((void*)0));
 ocs = node->ocs;

 if (node->rnode.sport->fc_id == s_id) {
  s_id = UINT32_MAX;
 }


 io->ocs = ocs;
 io->node = node;
 io->cmd_tgt = TRUE;


 io->io_type = OCS_IO_TYPE_BLS_RESP;
 io->display_name = "ba_acc";
 io->hio_type = OCS_HW_BLS_ACC_SID;
 io->init_task_tag = ox_id;


 ocs_memset(&io->iparam, 0, sizeof(io->iparam));
 io->iparam.bls_sid.s_id = s_id;
 io->iparam.bls_sid.ox_id = ox_id;
 io->iparam.bls_sid.rx_id = rx_id;

 acc = (void *)io->iparam.bls_sid.payload;

 ocs_memset(io->iparam.bls_sid.payload, 0, sizeof(io->iparam.bls_sid.payload));
 acc->ox_id = io->iparam.bls_sid.ox_id;
 acc->rx_id = io->iparam.bls_sid.rx_id;
 acc->high_seq_cnt = UINT16_MAX;

 if ((rc = ocs_scsi_io_dispatch(io, ocs_bls_send_acc_cb))) {
  ocs_log_err(ocs, "ocs_scsi_io_dispatch() failed: %d\n", rc);
  ocs_scsi_io_free(io);
  io = ((void*)0);
 }
 return io;
}
