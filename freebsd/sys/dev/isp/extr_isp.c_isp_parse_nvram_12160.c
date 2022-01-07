
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_1__* isp_devparam; int isp_max_queue_depth; int isp_selection_timeout; void* isp_cmd_dma_burst_enable; void* isp_data_dma_burst_enabl; int isp_data_line_active_neg; int isp_req_ack_active_neg; int isp_async_data_setup; int isp_retry_delay; int isp_retry_count; int isp_bus_reset_delay; int isp_initiator_id; int isp_fifo_threshold; } ;
typedef TYPE_2__ sdparam ;
struct TYPE_9__ {int isp_confopts; } ;
typedef TYPE_3__ ispsoftc_t ;
struct TYPE_7__ {int nvrm_flags; int goal_flags; int nvrm_period; int goal_period; int nvrm_offset; int goal_offset; scalar_t__ actv_flags; int exc_throttle; int dev_enable; } ;


 int DPARM_ARQ ;
 int DPARM_DISC ;
 int DPARM_PARITY ;
 int DPARM_RENEG ;
 int DPARM_SYNC ;
 int DPARM_TQING ;
 int DPARM_WIDE ;
 int ISP12160_NVRAM_ASYNC_DATA_SETUP_TIME (int *,int) ;
 void* ISP12160_NVRAM_BURST_ENABLE (int *) ;
 int ISP12160_NVRAM_BUS_RESET_DELAY (int *,int) ;
 int ISP12160_NVRAM_BUS_RETRY_COUNT (int *,int) ;
 int ISP12160_NVRAM_BUS_RETRY_DELAY (int *,int) ;
 int ISP12160_NVRAM_DATA_LINE_ACTIVE_NEGATION (int *,int) ;
 int ISP12160_NVRAM_FIFO_THRESHOLD (int *) ;
 int ISP12160_NVRAM_INITIATOR_ID (int *,int) ;
 int ISP12160_NVRAM_MAX_QUEUE_DEPTH (int *,int) ;
 int ISP12160_NVRAM_REQ_ACK_ACTIVE_NEGATION (int *,int) ;
 int ISP12160_NVRAM_SELECTION_TIMEOUT (int *,int) ;
 int ISP12160_NVRAM_TGT_DEVICE_ENABLE (int *,int,int) ;
 scalar_t__ ISP12160_NVRAM_TGT_DISC (int *,int,int) ;
 int ISP12160_NVRAM_TGT_EXEC_THROTTLE (int *,int,int) ;
 scalar_t__ ISP12160_NVRAM_TGT_PARITY (int *,int,int) ;
 scalar_t__ ISP12160_NVRAM_TGT_RENEG (int *,int,int) ;
 scalar_t__ ISP12160_NVRAM_TGT_SYNC (int *,int,int) ;
 int ISP12160_NVRAM_TGT_SYNC_OFFSET (int *,int,int) ;
 int ISP12160_NVRAM_TGT_SYNC_PERIOD (int *,int,int) ;
 scalar_t__ ISP12160_NVRAM_TGT_TQING (int *,int,int) ;
 scalar_t__ ISP12160_NVRAM_TGT_WIDE (int *,int,int) ;
 int ISP_CFG_OWNLOOPID ;
 int MAX_TARGETS ;
 TYPE_2__* SDPARAM (TYPE_3__*,int) ;

__attribute__((used)) static void
isp_parse_nvram_12160(ispsoftc_t *isp, int bus, uint8_t *nvram_data)
{
 sdparam *sdp = SDPARAM(isp, bus);
 int tgt;

 sdp->isp_fifo_threshold =
     ISP12160_NVRAM_FIFO_THRESHOLD(nvram_data);

 if ((isp->isp_confopts & ISP_CFG_OWNLOOPID) == 0)
  sdp->isp_initiator_id = ISP12160_NVRAM_INITIATOR_ID(nvram_data, bus);

 sdp->isp_bus_reset_delay =
     ISP12160_NVRAM_BUS_RESET_DELAY(nvram_data, bus);

 sdp->isp_retry_count =
     ISP12160_NVRAM_BUS_RETRY_COUNT(nvram_data, bus);

 sdp->isp_retry_delay =
     ISP12160_NVRAM_BUS_RETRY_DELAY(nvram_data, bus);

 sdp->isp_async_data_setup =
     ISP12160_NVRAM_ASYNC_DATA_SETUP_TIME(nvram_data, bus);

 sdp->isp_req_ack_active_neg =
     ISP12160_NVRAM_REQ_ACK_ACTIVE_NEGATION(nvram_data, bus);

 sdp->isp_data_line_active_neg =
     ISP12160_NVRAM_DATA_LINE_ACTIVE_NEGATION(nvram_data, bus);

 sdp->isp_data_dma_burst_enabl =
     ISP12160_NVRAM_BURST_ENABLE(nvram_data);

 sdp->isp_cmd_dma_burst_enable =
     ISP12160_NVRAM_BURST_ENABLE(nvram_data);

 sdp->isp_selection_timeout =
     ISP12160_NVRAM_SELECTION_TIMEOUT(nvram_data, bus);

 sdp->isp_max_queue_depth =
      ISP12160_NVRAM_MAX_QUEUE_DEPTH(nvram_data, bus);

 for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
  sdp->isp_devparam[tgt].dev_enable =
      ISP12160_NVRAM_TGT_DEVICE_ENABLE(nvram_data, tgt, bus);
  sdp->isp_devparam[tgt].exc_throttle =
   ISP12160_NVRAM_TGT_EXEC_THROTTLE(nvram_data, tgt, bus);
  sdp->isp_devparam[tgt].nvrm_offset =
   ISP12160_NVRAM_TGT_SYNC_OFFSET(nvram_data, tgt, bus);
  sdp->isp_devparam[tgt].nvrm_period =
   ISP12160_NVRAM_TGT_SYNC_PERIOD(nvram_data, tgt, bus);
  sdp->isp_devparam[tgt].nvrm_flags = 0;
  if (ISP12160_NVRAM_TGT_RENEG(nvram_data, tgt, bus))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_RENEG;
  sdp->isp_devparam[tgt].nvrm_flags |= DPARM_ARQ;
  if (ISP12160_NVRAM_TGT_TQING(nvram_data, tgt, bus))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_TQING;
  if (ISP12160_NVRAM_TGT_SYNC(nvram_data, tgt, bus))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_SYNC;
  if (ISP12160_NVRAM_TGT_WIDE(nvram_data, tgt, bus))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_WIDE;
  if (ISP12160_NVRAM_TGT_PARITY(nvram_data, tgt, bus))
   sdp->isp_devparam[tgt].nvrm_flags |= DPARM_PARITY;
  if (ISP12160_NVRAM_TGT_DISC(nvram_data, tgt, bus))
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
