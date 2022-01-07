
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int isp_fifo_threshold; int isp_async_data_setup; TYPE_1__* isp_devparam; int isp_fast_mttr; int isp_max_queue_depth; int isp_selection_timeout; int isp_tag_aging; int isp_cmd_dma_burst_enable; int isp_data_dma_burst_enabl; int isp_data_line_active_neg; int isp_req_ack_active_neg; int isp_retry_delay; int isp_retry_count; int isp_bus_reset_delay; int isp_initiator_id; } ;
typedef TYPE_2__ sdparam ;
struct TYPE_9__ {int isp_confopts; scalar_t__ isp_type; } ;
typedef TYPE_3__ ispsoftc_t ;
struct TYPE_7__ {int nvrm_offset; int nvrm_period; int goal_offset; int goal_period; int nvrm_flags; int goal_flags; scalar_t__ actv_flags; int exc_throttle; int dev_enable; } ;


 int DPARM_ARQ ;
 int DPARM_DISC ;
 int DPARM_PARITY ;
 int DPARM_RENEG ;
 int DPARM_SYNC ;
 int DPARM_TQING ;
 int DPARM_WIDE ;
 int ISP_CFG_OWNLOOPID ;
 scalar_t__ ISP_HA_SCSI_1040 ;
 int ISP_NVRAM_ASYNC_DATA_SETUP_TIME (int *) ;
 int ISP_NVRAM_BUS_RESET_DELAY (int *) ;
 int ISP_NVRAM_BUS_RETRY_COUNT (int *) ;
 int ISP_NVRAM_BUS_RETRY_DELAY (int *) ;
 int ISP_NVRAM_CMD_DMA_BURST_ENABLE (int *) ;
 int ISP_NVRAM_DATA_DMA_BURST_ENABLE (int *) ;
 int ISP_NVRAM_DATA_LINE_ACTIVE_NEGATION (int *) ;
 int ISP_NVRAM_FAST_MTTR_ENABLE (int *) ;
 int ISP_NVRAM_FIFO_THRESHOLD (int *) ;
 int ISP_NVRAM_FIFO_THRESHOLD_128 (int *) ;
 int ISP_NVRAM_INITIATOR_ID (int *) ;
 int ISP_NVRAM_MAX_QUEUE_DEPTH (int *) ;
 int ISP_NVRAM_REQ_ACK_ACTIVE_NEGATION (int *) ;
 int ISP_NVRAM_SELECTION_TIMEOUT (int *) ;
 int ISP_NVRAM_TAG_AGE_LIMIT (int *) ;
 int ISP_NVRAM_TGT_DEVICE_ENABLE (int *,int) ;
 scalar_t__ ISP_NVRAM_TGT_DISC (int *,int) ;
 int ISP_NVRAM_TGT_EXEC_THROTTLE (int *,int) ;
 scalar_t__ ISP_NVRAM_TGT_PARITY (int *,int) ;
 scalar_t__ ISP_NVRAM_TGT_RENEG (int *,int) ;
 scalar_t__ ISP_NVRAM_TGT_SYNC (int *,int) ;
 int ISP_NVRAM_TGT_SYNC_OFFSET (int *,int) ;
 int ISP_NVRAM_TGT_SYNC_PERIOD (int *,int) ;
 scalar_t__ ISP_NVRAM_TGT_TQING (int *,int) ;
 scalar_t__ ISP_NVRAM_TGT_WIDE (int *,int) ;
 int MAX_TARGETS ;
 TYPE_2__* SDPARAM (TYPE_3__*,int ) ;

__attribute__((used)) static void
isp_parse_nvram_1020(ispsoftc_t *isp, uint8_t *nvram_data)
{
 sdparam *sdp = SDPARAM(isp, 0);
 int tgt;

 sdp->isp_fifo_threshold =
  ISP_NVRAM_FIFO_THRESHOLD(nvram_data) |
  (ISP_NVRAM_FIFO_THRESHOLD_128(nvram_data) << 2);

 if ((isp->isp_confopts & ISP_CFG_OWNLOOPID) == 0)
  sdp->isp_initiator_id = ISP_NVRAM_INITIATOR_ID(nvram_data);

 sdp->isp_bus_reset_delay =
  ISP_NVRAM_BUS_RESET_DELAY(nvram_data);

 sdp->isp_retry_count =
  ISP_NVRAM_BUS_RETRY_COUNT(nvram_data);

 sdp->isp_retry_delay =
  ISP_NVRAM_BUS_RETRY_DELAY(nvram_data);

 sdp->isp_async_data_setup =
  ISP_NVRAM_ASYNC_DATA_SETUP_TIME(nvram_data);

 if (isp->isp_type >= ISP_HA_SCSI_1040) {
  if (sdp->isp_async_data_setup < 9) {
   sdp->isp_async_data_setup = 9;
  }
 } else {
  if (sdp->isp_async_data_setup != 6) {
   sdp->isp_async_data_setup = 6;
  }
 }

 sdp->isp_req_ack_active_neg =
  ISP_NVRAM_REQ_ACK_ACTIVE_NEGATION(nvram_data);

 sdp->isp_data_line_active_neg =
  ISP_NVRAM_DATA_LINE_ACTIVE_NEGATION(nvram_data);

 sdp->isp_data_dma_burst_enabl =
  ISP_NVRAM_DATA_DMA_BURST_ENABLE(nvram_data);

 sdp->isp_cmd_dma_burst_enable =
  ISP_NVRAM_CMD_DMA_BURST_ENABLE(nvram_data);

 sdp->isp_tag_aging =
  ISP_NVRAM_TAG_AGE_LIMIT(nvram_data);

 sdp->isp_selection_timeout =
  ISP_NVRAM_SELECTION_TIMEOUT(nvram_data);

 sdp->isp_max_queue_depth =
  ISP_NVRAM_MAX_QUEUE_DEPTH(nvram_data);

 sdp->isp_fast_mttr = ISP_NVRAM_FAST_MTTR_ENABLE(nvram_data);

 for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
  sdp->isp_devparam[tgt].dev_enable =
   ISP_NVRAM_TGT_DEVICE_ENABLE(nvram_data, tgt);
  sdp->isp_devparam[tgt].exc_throttle =
   ISP_NVRAM_TGT_EXEC_THROTTLE(nvram_data, tgt);
  sdp->isp_devparam[tgt].nvrm_offset =
   ISP_NVRAM_TGT_SYNC_OFFSET(nvram_data, tgt);
  sdp->isp_devparam[tgt].nvrm_period =
   ISP_NVRAM_TGT_SYNC_PERIOD(nvram_data, tgt);





  if (isp->isp_type < ISP_HA_SCSI_1040) {




   if (sdp->isp_devparam[tgt].nvrm_period < 0x19) {
    sdp->isp_devparam[tgt].nvrm_period = 0x19;
   }
   if (sdp->isp_devparam[tgt].nvrm_offset > 0xc) {
    sdp->isp_devparam[tgt].nvrm_offset = 0x0c;
   }
  } else {
   if (sdp->isp_devparam[tgt].nvrm_offset > 0x8) {
    sdp->isp_devparam[tgt].nvrm_offset = 0x8;
   }
  }
  sdp->isp_devparam[tgt].nvrm_flags = 0;
  if (ISP_NVRAM_TGT_RENEG(nvram_data, tgt))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_RENEG;
  sdp->isp_devparam[tgt].nvrm_flags |= DPARM_ARQ;
  if (ISP_NVRAM_TGT_TQING(nvram_data, tgt))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_TQING;
  if (ISP_NVRAM_TGT_SYNC(nvram_data, tgt))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_SYNC;
  if (ISP_NVRAM_TGT_WIDE(nvram_data, tgt))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_WIDE;
  if (ISP_NVRAM_TGT_PARITY(nvram_data, tgt))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_PARITY;
  if (ISP_NVRAM_TGT_DISC(nvram_data, tgt))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_DISC;
  sdp->isp_devparam[tgt].actv_flags = 0;
  sdp->isp_devparam[tgt].goal_offset =
      sdp->isp_devparam[tgt].nvrm_offset;
  sdp->isp_devparam[tgt].goal_period =
      sdp->isp_devparam[tgt].nvrm_period;
  sdp->isp_devparam[tgt].goal_flags =
      sdp->isp_devparam[tgt].nvrm_flags;
 }
}
