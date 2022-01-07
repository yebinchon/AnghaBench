
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_14__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_33__ {scalar_t__ status; int total_data_placed; int xri; } ;
typedef TYPE_8__ sli4_fc_optimized_write_data_cqe_t ;
typedef int prop_buf ;
struct TYPE_32__ {int unsolicited; } ;
struct TYPE_31__ {int (* unsolicited ) (int ,TYPE_10__*) ;int (* bounce ) (int ,TYPE_10__*,int ,int ,int ) ;} ;
struct TYPE_28__ {scalar_t__ bounce; } ;
struct TYPE_34__ {TYPE_7__ args; TYPE_6__ callback; TYPE_3__ config; } ;
typedef TYPE_9__ ocs_hw_t ;
struct TYPE_21__ {int auto_xrdy; TYPE_5__* header; int status; int hw_priv; int fcfi; TYPE_2__* payload; TYPE_11__* hio; int xri; scalar_t__ out_of_xris; TYPE_9__* hw; } ;
typedef TYPE_10__ ocs_hw_sequence_t ;
struct TYPE_22__ {scalar_t__ type; int axr_lock; TYPE_12__* axr_buf; } ;
typedef TYPE_11__ ocs_hw_io_t ;
struct TYPE_26__ {int len; } ;
struct TYPE_27__ {TYPE_1__ dma; } ;
struct TYPE_29__ {int len; TYPE_14__* virt; } ;
struct TYPE_30__ {TYPE_4__ dma; } ;
struct TYPE_23__ {int data_cqe; int call_axr_data; int cmd_cqe; int fcfi; TYPE_2__ payload; TYPE_5__ header; TYPE_10__ seq; } ;
typedef TYPE_12__ ocs_hw_auto_xfer_rdy_buffer_t ;
typedef int int32_t ;
struct TYPE_24__ {int eq; } ;
typedef TYPE_13__ hw_cq_t ;
struct TYPE_25__ {int ox_id; int d_id; int s_id; } ;
typedef TYPE_14__ fc_header_t ;


 scalar_t__ OCS_HW_IO_TARGET_RSP ;
 int OCS_HW_UNSOL_ABTS_RCVD ;
 int OCS_HW_UNSOL_ERROR ;
 int OCS_HW_UNSOL_SUCCESS ;
 scalar_t__ SLI4_FC_WCQE_STATUS_REMOTE_STOP ;
 scalar_t__ SLI4_FC_WCQE_STATUS_SUCCESS ;
 int fc_be24toh (int ) ;
 int ocs_be16toh (int ) ;
 scalar_t__ ocs_get_property (char*,char*,int) ;
 TYPE_11__* ocs_hw_io_lookup (TYPE_9__*,int ) ;
 int ocs_hw_unsol_process_bounce ;
 int ocs_lock (int *) ;
 int ocs_strtoul (char*,int ,int ) ;
 int ocs_udelay (int ) ;
 int ocs_unlock (int *) ;
 int stub1 (int ,TYPE_10__*,int ,int ,int ) ;
 int stub2 (int ,TYPE_10__*) ;

int32_t
ocs_hw_rqpair_process_auto_xfr_rdy_data(ocs_hw_t *hw, hw_cq_t *cq, uint8_t *cqe)
{

 sli4_fc_optimized_write_data_cqe_t *opt_wr = (sli4_fc_optimized_write_data_cqe_t*)cqe;
 ocs_hw_sequence_t *seq;
 ocs_hw_io_t *io;
 ocs_hw_auto_xfer_rdy_buffer_t *buf;





 io = ocs_hw_io_lookup(hw, opt_wr->xri);
 ocs_lock(&io->axr_lock);
 buf = io->axr_buf;
 buf->data_cqe = 1;
 seq = &buf->seq;
 seq->hw = hw;
 seq->auto_xrdy = 1;
 seq->out_of_xris = 0;
 seq->xri = opt_wr->xri;
 seq->hio = io;
 seq->header = &buf->header;
 seq->payload = &buf->payload;

 seq->header->dma.len = sizeof(fc_header_t);
 seq->payload->dma.len = opt_wr->total_data_placed;
 seq->fcfi = buf->fcfi;
 seq->hw_priv = cq->eq;


 if (opt_wr->status == SLI4_FC_WCQE_STATUS_SUCCESS) {
  seq->status = OCS_HW_UNSOL_SUCCESS;
 } else if (opt_wr->status == SLI4_FC_WCQE_STATUS_REMOTE_STOP) {
  seq->status = OCS_HW_UNSOL_ABTS_RCVD;
 } else {
  seq->status = OCS_HW_UNSOL_ERROR;
 }


 if(io->type == OCS_HW_IO_TARGET_RSP) {
  io->axr_buf->call_axr_data = 1;
  goto exit_ocs_hw_rqpair_process_auto_xfr_rdy_data;
 }

 if(!buf->cmd_cqe) {

  goto exit_ocs_hw_rqpair_process_auto_xfr_rdy_data;
 }
 if (hw->config.bounce) {
  fc_header_t *hdr = seq->header->dma.virt;
  uint32_t s_id = fc_be24toh(hdr->s_id);
  uint32_t d_id = fc_be24toh(hdr->d_id);
  uint32_t ox_id = ocs_be16toh(hdr->ox_id);
  if (hw->callback.bounce != ((void*)0)) {
   (*hw->callback.bounce)(ocs_hw_unsol_process_bounce, seq, s_id, d_id, ox_id);
  }
 } else {
  hw->callback.unsolicited(hw->args.unsolicited, seq);
 }

exit_ocs_hw_rqpair_process_auto_xfr_rdy_data:
 ocs_unlock(&io->axr_lock);
 return 0;
}
