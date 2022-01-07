
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_19__ {int isp_data_dma_burst_enabl; int isp_async_data_setup; int isp_selection_timeout; int isp_tag_aging; int isp_bus_reset_delay; scalar_t__ isp_ultramode; int isp_req_ack_active_neg; int isp_data_line_active_neg; void* isp_initiator_id; TYPE_1__* isp_devparam; scalar_t__ isp_retry_delay; scalar_t__ isp_retry_count; int isp_max_queue_depth; scalar_t__ isp_fifo_threshold; scalar_t__ isp_cmd_dma_burst_enable; } ;
typedef TYPE_2__ sdparam ;
struct TYPE_20__ {int* param; } ;
typedef TYPE_3__ mbreg_t ;
struct TYPE_21__ {scalar_t__ isp_type; scalar_t__ isp_bustype; int isp_clock; int isp_confopts; } ;
typedef TYPE_4__ ispsoftc_t ;
struct TYPE_18__ {int dev_enable; void* nvrm_period; void* goal_period; void* nvrm_offset; void* goal_offset; int nvrm_flags; int goal_flags; scalar_t__ actv_flags; scalar_t__ actv_period; scalar_t__ actv_offset; int exc_throttle; } ;


 void* DEFAULT_IID (TYPE_4__*,int) ;
 int DPARM_DEFAULT ;
 int ISP_10M_SYNCPARMS ;
 int ISP_20M_SYNCPARMS ;
 int ISP_20M_SYNCPARMS_1040 ;
 int ISP_40M_SYNCPARMS ;
 int ISP_80M_SYNCPARMS ;
 scalar_t__ ISP_BT_PCI ;
 scalar_t__ ISP_BT_SBUS ;
 int ISP_CFG_NONVRAM ;
 int ISP_EXEC_THROTTLE ;
 scalar_t__ ISP_HA_SCSI_1020A ;
 scalar_t__ ISP_HA_SCSI_1040 ;
 scalar_t__ IS_1240 (TYPE_4__*) ;
 scalar_t__ IS_DUALBUS (TYPE_4__*) ;
 scalar_t__ IS_ULTRA2 (TYPE_4__*) ;
 scalar_t__ IS_ULTRA3 (TYPE_4__*) ;
 int MAXISPREQUEST (TYPE_4__*) ;
 int MAX_TARGETS ;
 int MBLOGNONE ;
 int MBOX_COMMAND_COMPLETE ;
 int MBOX_GET_ACT_NEG_STATE ;
 int MBSINIT (TYPE_3__*,int ,int ,int ) ;
 TYPE_2__* SDPARAM (TYPE_4__*,int ) ;
 int isp_mboxcmd (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ isp_read_nvram (TYPE_4__*,int) ;

__attribute__((used)) static void
isp_setdfltsdparm(ispsoftc_t *isp)
{
 int tgt;
 sdparam *sdp, *sdp1;

 sdp = SDPARAM(isp, 0);
 if (IS_DUALBUS(isp))
  sdp1 = sdp + 1;
 else
  sdp1 = ((void*)0);




 sdp->isp_cmd_dma_burst_enable = 0;
 sdp->isp_data_dma_burst_enabl = 1;
 sdp->isp_fifo_threshold = 0;
 sdp->isp_initiator_id = DEFAULT_IID(isp, 0);
 if (isp->isp_type >= ISP_HA_SCSI_1040) {
  sdp->isp_async_data_setup = 9;
 } else {
  sdp->isp_async_data_setup = 6;
 }
 sdp->isp_selection_timeout = 250;
 sdp->isp_max_queue_depth = MAXISPREQUEST(isp);
 sdp->isp_tag_aging = 8;
 sdp->isp_bus_reset_delay = 5;




 sdp->isp_retry_count = 0;
 sdp->isp_retry_delay = 0;

 for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
  sdp->isp_devparam[tgt].exc_throttle = ISP_EXEC_THROTTLE;
  sdp->isp_devparam[tgt].dev_enable = 1;
 }







 for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
  uint8_t off, per;
  sdp->isp_devparam[tgt].actv_offset = 0;
  sdp->isp_devparam[tgt].actv_period = 0;
  sdp->isp_devparam[tgt].actv_flags = 0;

  sdp->isp_devparam[tgt].goal_flags =
      sdp->isp_devparam[tgt].nvrm_flags = DPARM_DEFAULT;





  if (IS_ULTRA3(isp)) {
   off = ISP_80M_SYNCPARMS >> 8;
   per = ISP_80M_SYNCPARMS & 0xff;
  } else if (IS_ULTRA2(isp)) {
   off = ISP_40M_SYNCPARMS >> 8;
   per = ISP_40M_SYNCPARMS & 0xff;
  } else if (IS_1240(isp)) {
   off = ISP_20M_SYNCPARMS >> 8;
   per = ISP_20M_SYNCPARMS & 0xff;
  } else if ((isp->isp_bustype == ISP_BT_SBUS &&
      isp->isp_type < ISP_HA_SCSI_1020A) ||
      (isp->isp_bustype == ISP_BT_PCI &&
      isp->isp_type < ISP_HA_SCSI_1040) ||
      (isp->isp_clock && isp->isp_clock < 60) ||
      (sdp->isp_ultramode == 0)) {
   off = ISP_10M_SYNCPARMS >> 8;
   per = ISP_10M_SYNCPARMS & 0xff;
  } else {
   off = ISP_20M_SYNCPARMS_1040 >> 8;
   per = ISP_20M_SYNCPARMS_1040 & 0xff;
  }
  sdp->isp_devparam[tgt].goal_offset =
      sdp->isp_devparam[tgt].nvrm_offset = off;
  sdp->isp_devparam[tgt].goal_period =
      sdp->isp_devparam[tgt].nvrm_period = per;

 }




 if (sdp1) {
  *sdp1 = *sdp;
  sdp1->isp_initiator_id = DEFAULT_IID(isp, 1);
 }







 if ((isp->isp_confopts & ISP_CFG_NONVRAM) == 0) {
  mbreg_t mbs;

  if (isp_read_nvram(isp, 0) == 0) {
   if (IS_DUALBUS(isp)) {
    if (isp_read_nvram(isp, 1) == 0) {
     return;
    }
   }
  }
  MBSINIT(&mbs, MBOX_GET_ACT_NEG_STATE, MBLOGNONE, 0);
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
   sdp->isp_req_ack_active_neg = 1;
   sdp->isp_data_line_active_neg = 1;
   if (sdp1) {
    sdp1->isp_req_ack_active_neg = 1;
    sdp1->isp_data_line_active_neg = 1;
   }
  } else {
   sdp->isp_req_ack_active_neg =
       (mbs.param[1] >> 4) & 0x1;
   sdp->isp_data_line_active_neg =
       (mbs.param[1] >> 5) & 0x1;
   if (sdp1) {
    sdp1->isp_req_ack_active_neg =
        (mbs.param[2] >> 4) & 0x1;
    sdp1->isp_data_line_active_neg =
        (mbs.param[2] >> 5) & 0x1;
   }
  }
 }

}
