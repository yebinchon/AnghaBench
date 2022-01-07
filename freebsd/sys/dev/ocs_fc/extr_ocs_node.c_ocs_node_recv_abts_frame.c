
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_11__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_27__ {int io_alloc_failed_count; } ;
typedef TYPE_3__ ocs_xport_t ;
struct TYPE_28__ {int hw; TYPE_3__* xport; } ;
typedef TYPE_4__ ocs_t ;
struct TYPE_29__ {int abort_cnt; TYPE_4__* ocs; } ;
typedef TYPE_5__ ocs_node_t ;
struct TYPE_30__ {TYPE_11__* io; int payload; TYPE_2__* header; } ;
typedef TYPE_6__ ocs_node_cb_t ;
struct TYPE_31__ {int hw_priv; int payload; TYPE_2__* header; } ;
typedef TYPE_7__ ocs_hw_sequence_t ;
typedef scalar_t__ int32_t ;
struct TYPE_32__ {int rx_id; int ox_id; int d_id; int s_id; } ;
typedef TYPE_8__ fc_header_t ;
typedef int cbdata ;
struct TYPE_25__ {TYPE_8__* virt; } ;
struct TYPE_26__ {TYPE_1__ dma; } ;
struct TYPE_24__ {int seq_init; int cmd_tgt; TYPE_5__* node; TYPE_4__* ocs; int hw_priv; } ;


 int OCS_EVT_ABTS_RCVD ;
 int OCS_HW_SEND_FRAME_CAPABLE ;
 int OCS_SCSI_IO_ROLE_RESPONDER ;
 int TRUE ;
 int fc_be24toh (int ) ;
 int node_printf (TYPE_5__*,char*,int ,int ,int ,int ) ;
 int ocs_atomic_add_return (int *,int) ;
 int ocs_be16toh (int ) ;
 scalar_t__ ocs_hw_get (int *,int ,scalar_t__*) ;
 int ocs_hw_sequence_free (int *,TYPE_7__*) ;
 int * ocs_io_find_tgt_io (TYPE_4__*,TYPE_5__*,int ,int ) ;
 int ocs_log_debug (TYPE_4__*,char*,int ) ;
 int ocs_log_test (TYPE_4__*,char*) ;
 int ocs_memset (TYPE_6__*,int ,int) ;
 int ocs_node_post_event (TYPE_5__*,int ,TYPE_6__*) ;
 TYPE_11__* ocs_scsi_io_alloc (TYPE_5__*,int ) ;
 scalar_t__ ocs_sframe_send_bls_acc (TYPE_5__*,TYPE_7__*) ;

int32_t
ocs_node_recv_abts_frame(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
 ocs_t *ocs = node->ocs;
 ocs_xport_t *xport = ocs->xport;
 fc_header_t *hdr = seq->header->dma.virt;
 uint16_t ox_id = ocs_be16toh(hdr->ox_id);
 uint16_t rx_id = ocs_be16toh(hdr->rx_id);
 ocs_node_cb_t cbdata;
 int32_t rc = 0;

 node->abort_cnt++;





 if (ocs_io_find_tgt_io(ocs, node, ox_id, rx_id) == ((void*)0)) {
  uint32_t send_frame_capable;

  ocs_log_debug(ocs, "IO not found (ox_id %04x)\n", ox_id);


  rc = ocs_hw_get(&ocs->hw, OCS_HW_SEND_FRAME_CAPABLE, &send_frame_capable);
  if ((rc == 0) && send_frame_capable) {
   rc = ocs_sframe_send_bls_acc(node, seq);
   if (rc) {
    ocs_log_test(ocs, "ocs_bls_acc_send_frame failed\n");
   }
   return rc;
  }

 }

 ocs_memset(&cbdata, 0, sizeof(cbdata));
 cbdata.header = seq->header;
 cbdata.payload = seq->payload;

 cbdata.io = ocs_scsi_io_alloc(node, OCS_SCSI_IO_ROLE_RESPONDER);
 if (cbdata.io != ((void*)0)) {
  cbdata.io->hw_priv = seq->hw_priv;

  cbdata.io->seq_init = 1;


  cbdata.io->ocs = ocs;
  cbdata.io->node = node;
  cbdata.io->cmd_tgt = TRUE;

  ocs_node_post_event(node, OCS_EVT_ABTS_RCVD, &cbdata);
 } else {
  ocs_atomic_add_return(&xport->io_alloc_failed_count, 1);
  node_printf(node, "SCSI IO allocation failed for ABTS received s_id %06x d_id %06x ox_id %04x rx_id %04x\n",
       fc_be24toh(hdr->s_id), fc_be24toh(hdr->d_id), ocs_be16toh(hdr->ox_id), ocs_be16toh(hdr->rx_id));
 }


 ocs_hw_sequence_free(&ocs->hw, seq);
 return 0;
}
