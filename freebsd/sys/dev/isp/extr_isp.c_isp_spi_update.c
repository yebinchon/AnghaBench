
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_8__ {int update; int sendmarker; TYPE_1__* isp_devparam; } ;
typedef TYPE_2__ sdparam ;
struct TYPE_9__ {int* param; } ;
typedef TYPE_3__ mbreg_t ;
typedef int ispsoftc_t ;
struct TYPE_7__ {scalar_t__ dev_enable; int dev_refresh; int goal_flags; int goal_offset; int goal_period; int actv_flags; scalar_t__ dev_update; void* actv_offset; void* actv_period; } ;


 int DPARM_PARITY ;
 int DPARM_QFRZ ;
 int DPARM_RENEG ;
 int DPARM_SYNC ;
 int DPARM_TQING ;
 int DPARM_WIDE ;
 int ISPASYNC_NEW_TGT_PARAMS ;
 int ISP_LOGDEBUG0 ;
 scalar_t__ IS_FC (int *) ;
 int MAX_TARGETS ;
 int MBLOGALL ;
 int MBOX_COMMAND_COMPLETE ;
 int MBOX_GET_TARGET_PARAMS ;
 int MBOX_SET_TARGET_PARAMS ;
 int MBSINIT (TYPE_3__*,int ,int ,int ) ;
 TYPE_2__* SDPARAM (int *,int) ;
 int isp_async (int *,int ,int,int) ;
 int isp_mboxcmd (int *,TYPE_3__*) ;
 int isp_prt (int *,int ,char*,int,int,...) ;

__attribute__((used)) static void
isp_spi_update(ispsoftc_t *isp, int chan)
{
 int tgt;
 mbreg_t mbs;
 sdparam *sdp;

 if (IS_FC(isp)) {



  return;
 }
 sdp = SDPARAM(isp, chan);
 sdp->update = 0;

 for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
  uint16_t flags, period, offset;
  int get;

  if (sdp->isp_devparam[tgt].dev_enable == 0) {
   sdp->isp_devparam[tgt].dev_update = 0;
   sdp->isp_devparam[tgt].dev_refresh = 0;
   isp_prt(isp, ISP_LOGDEBUG0, "skipping target %d bus %d update", tgt, chan);
   continue;
  }







  MBSINIT(&mbs, 0, MBLOGALL, 0);




  if (sdp->isp_devparam[tgt].dev_refresh) {
   mbs.param[0] = MBOX_GET_TARGET_PARAMS;
   get = 1;
  } else if (sdp->isp_devparam[tgt].dev_update) {
   mbs.param[0] = MBOX_SET_TARGET_PARAMS;





   sdp->isp_devparam[tgt].goal_flags |= DPARM_RENEG;
   sdp->isp_devparam[tgt].goal_flags &= ~DPARM_QFRZ;
   mbs.param[2] = sdp->isp_devparam[tgt].goal_flags;





   if ((mbs.param[2] & (DPARM_SYNC|DPARM_WIDE)) != 0) {
    mbs.param[2] |= DPARM_PARITY;
   }

   if (mbs.param[2] & DPARM_SYNC) {
    mbs.param[3] =
        (sdp->isp_devparam[tgt].goal_offset << 8) |
        (sdp->isp_devparam[tgt].goal_period);
   }
   sdp->isp_devparam[tgt].actv_flags &= ~DPARM_TQING;
   sdp->isp_devparam[tgt].actv_flags |=
       (sdp->isp_devparam[tgt].goal_flags & DPARM_TQING);
   isp_prt(isp, ISP_LOGDEBUG0, "bus %d set tgt %d flags 0x%x off 0x%x period 0x%x",
       chan, tgt, mbs.param[2], mbs.param[3] >> 8, mbs.param[3] & 0xff);
   get = 0;
  } else {
   continue;
  }
  mbs.param[1] = (chan << 15) | (tgt << 8);
  isp_mboxcmd(isp, &mbs);
  if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
   continue;
  }
  if (get == 0) {
   sdp->sendmarker = 1;
   sdp->isp_devparam[tgt].dev_update = 0;
   sdp->isp_devparam[tgt].dev_refresh = 1;
  } else {
   sdp->isp_devparam[tgt].dev_refresh = 0;
   flags = mbs.param[2];
   period = mbs.param[3] & 0xff;
   offset = mbs.param[3] >> 8;
   sdp->isp_devparam[tgt].actv_flags = flags;
   sdp->isp_devparam[tgt].actv_period = period;
   sdp->isp_devparam[tgt].actv_offset = offset;
   isp_async(isp, ISPASYNC_NEW_TGT_PARAMS, chan, tgt);
  }
 }

 for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
  if (sdp->isp_devparam[tgt].dev_update ||
      sdp->isp_devparam[tgt].dev_refresh) {
   sdp->update = 1;
   break;
  }
 }
}
