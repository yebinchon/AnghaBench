
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_19__ {int isp_retry_count; int isp_retry_delay; int isp_async_data_setup; int isp_req_ack_active_neg; int isp_data_line_active_neg; int isp_tag_aging; int isp_selection_timeout; scalar_t__ isp_fast_mttr; } ;
typedef TYPE_1__ sdparam ;
struct TYPE_20__ {int* param; } ;
typedef TYPE_2__ mbreg_t ;
struct TYPE_21__ {int isp_residx; int isp_resodx; int isp_reqidx; int isp_reqodx; int isp_state; int isp_rquest_dma; int isp_result_dma; } ;
typedef TYPE_3__ ispsoftc_t ;


 void* DMA_WD0 (int ) ;
 void* DMA_WD1 (int ) ;
 void* DMA_WD2 (int ) ;
 void* DMA_WD3 (int ) ;
 int FW_FEATURE_FAST_POST ;
 int FW_FEATURE_LVD_NOTIFY ;
 int FW_FEATURE_RIO_32BIT ;
 int ISP_INITSTATE ;
 int ISP_LOGERR ;
 int ISP_LOGINFO ;
 int ISP_RUNSTATE ;
 int ISP_WRITE (TYPE_3__*,int ,int) ;
 scalar_t__ IS_1240 (TYPE_3__*) ;
 scalar_t__ IS_DUALBUS (TYPE_3__*) ;
 scalar_t__ IS_ULTRA2 (TYPE_3__*) ;
 scalar_t__ IS_ULTRA3 (TYPE_3__*) ;
 int MBLOGALL ;
 int MBLOGNONE ;
 int MBOX_COMMAND_COMPLETE ;
 int MBOX_INIT_REQ_QUEUE ;
 int MBOX_INIT_REQ_QUEUE_A64 ;
 int MBOX_INIT_RES_QUEUE ;
 int MBOX_INIT_RES_QUEUE_A64 ;
 int MBOX_SET_ACT_NEG_STATE ;
 int MBOX_SET_ASYNC_DATA_SETUP_TIME ;
 int MBOX_SET_FW_FEATURES ;
 int MBOX_SET_RETRY_COUNT ;
 int MBOX_SET_SELECT_TIMEOUT ;
 int MBOX_SET_TAG_AGE_LIMIT ;
 int MBSINIT (TYPE_2__*,int ,int ,int ) ;
 void* RESULT_QUEUE_LEN (TYPE_3__*) ;
 int RISC_MTR ;
 void* RQUEST_QUEUE_LEN (TYPE_3__*) ;
 TYPE_1__* SDPARAM (TYPE_3__*,int) ;
 int isp_mboxcmd (TYPE_3__*,TYPE_2__*) ;
 int isp_prt (TYPE_3__*,int ,char*,int,...) ;
 int isp_scsi_channel_init (TYPE_3__*,int) ;

__attribute__((used)) static void
isp_scsi_init(ispsoftc_t *isp)
{
 sdparam *sdp_chan0, *sdp_chan1;
 mbreg_t mbs;

 isp->isp_state = ISP_INITSTATE;

 sdp_chan0 = SDPARAM(isp, 0);
 sdp_chan1 = sdp_chan0;
 if (IS_DUALBUS(isp)) {
  sdp_chan1 = SDPARAM(isp, 1);
 }






 if (sdp_chan0->isp_fast_mttr) {
  ISP_WRITE(isp, RISC_MTR, 0x1313);
 }





 MBSINIT(&mbs, MBOX_SET_RETRY_COUNT, MBLOGALL, 0);
 mbs.param[1] = sdp_chan0->isp_retry_count;
 mbs.param[2] = sdp_chan0->isp_retry_delay;
 mbs.param[6] = sdp_chan1->isp_retry_count;
 mbs.param[7] = sdp_chan1->isp_retry_delay;
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
  return;
 }




 MBSINIT(&mbs, MBOX_SET_ASYNC_DATA_SETUP_TIME, MBLOGALL, 0);
 mbs.param[1] = sdp_chan0->isp_async_data_setup;
 mbs.param[2] = sdp_chan1->isp_async_data_setup;
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
  return;
 }




 MBSINIT(&mbs, MBOX_SET_ACT_NEG_STATE, MBLOGNONE, 0);
 mbs.param[1] =
     (sdp_chan0->isp_req_ack_active_neg << 4) |
     (sdp_chan0->isp_data_line_active_neg << 5);
 mbs.param[2] =
     (sdp_chan1->isp_req_ack_active_neg << 4) |
     (sdp_chan1->isp_data_line_active_neg << 5);
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
  isp_prt(isp, ISP_LOGERR,
      "failed to set active negation state (%d,%d), (%d,%d)",
      sdp_chan0->isp_req_ack_active_neg,
      sdp_chan0->isp_data_line_active_neg,
      sdp_chan1->isp_req_ack_active_neg,
      sdp_chan1->isp_data_line_active_neg);



 }




 MBSINIT(&mbs, MBOX_SET_TAG_AGE_LIMIT, MBLOGALL, 0);
 mbs.param[1] = sdp_chan0->isp_tag_aging;
 mbs.param[2] = sdp_chan1->isp_tag_aging;
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
  isp_prt(isp, ISP_LOGERR, "failed to set tag age limit (%d,%d)",
      sdp_chan0->isp_tag_aging, sdp_chan1->isp_tag_aging);
  return;
 }




 MBSINIT(&mbs, MBOX_SET_SELECT_TIMEOUT, MBLOGALL, 0);
 mbs.param[1] = sdp_chan0->isp_selection_timeout;
 mbs.param[2] = sdp_chan1->isp_selection_timeout;
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
  return;
 }


 isp_scsi_channel_init(isp, 0);
 if (IS_DUALBUS(isp))
  isp_scsi_channel_init(isp, 1);





 if (IS_ULTRA2(isp) || IS_1240(isp)) {
  MBSINIT(&mbs, MBOX_INIT_RES_QUEUE_A64, MBLOGALL, 0);
  mbs.param[1] = RESULT_QUEUE_LEN(isp);
  mbs.param[2] = DMA_WD1(isp->isp_result_dma);
  mbs.param[3] = DMA_WD0(isp->isp_result_dma);
  mbs.param[4] = 0;
  mbs.param[6] = DMA_WD3(isp->isp_result_dma);
  mbs.param[7] = DMA_WD2(isp->isp_result_dma);
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
   return;
  }
  isp->isp_residx = isp->isp_resodx = mbs.param[5];

  MBSINIT(&mbs, MBOX_INIT_REQ_QUEUE_A64, MBLOGALL, 0);
  mbs.param[1] = RQUEST_QUEUE_LEN(isp);
  mbs.param[2] = DMA_WD1(isp->isp_rquest_dma);
  mbs.param[3] = DMA_WD0(isp->isp_rquest_dma);
  mbs.param[5] = 0;
  mbs.param[6] = DMA_WD3(isp->isp_result_dma);
  mbs.param[7] = DMA_WD2(isp->isp_result_dma);
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
   return;
  }
  isp->isp_reqidx = isp->isp_reqodx = mbs.param[4];
 } else {
  MBSINIT(&mbs, MBOX_INIT_RES_QUEUE, MBLOGALL, 0);
  mbs.param[1] = RESULT_QUEUE_LEN(isp);
  mbs.param[2] = DMA_WD1(isp->isp_result_dma);
  mbs.param[3] = DMA_WD0(isp->isp_result_dma);
  mbs.param[4] = 0;
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
   return;
  }
  isp->isp_residx = isp->isp_resodx = mbs.param[5];

  MBSINIT(&mbs, MBOX_INIT_REQ_QUEUE, MBLOGALL, 0);
  mbs.param[1] = RQUEST_QUEUE_LEN(isp);
  mbs.param[2] = DMA_WD1(isp->isp_rquest_dma);
  mbs.param[3] = DMA_WD0(isp->isp_rquest_dma);
  mbs.param[5] = 0;
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
   return;
  }
  isp->isp_reqidx = isp->isp_reqodx = mbs.param[4];
 }
 MBSINIT(&mbs, MBOX_SET_FW_FEATURES, MBLOGALL, 0);
 if (IS_ULTRA2(isp))
  mbs.param[1] |= FW_FEATURE_LVD_NOTIFY;




 if (IS_ULTRA3(isp))
  mbs.param[1] |= FW_FEATURE_RIO_32BIT;

 if (mbs.param[1] != 0) {
  uint16_t sfeat = mbs.param[1];
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] == MBOX_COMMAND_COMPLETE) {
   isp_prt(isp, ISP_LOGINFO,
       "Enabled FW features (0x%x)", sfeat);
  }
 }

 isp->isp_state = ISP_RUNSTATE;
}
