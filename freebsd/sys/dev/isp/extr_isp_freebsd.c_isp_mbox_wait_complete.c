
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_9__ {scalar_t__ timeout; int * param; int lineno; int func; } ;
typedef TYPE_2__ mbreg_t ;
struct TYPE_8__ {int mbox_sleep_ok; int mbox_sleeping; int mboxcmd_done; } ;
struct TYPE_10__ {TYPE_1__ isp_osinfo; int isp_lastmbxcmd; int isp_lock; } ;
typedef TYPE_3__ ispsoftc_t ;


 int ISP_DELAY (int) ;
 int ISP_LOGWARN ;
 int ISP_RUN_ISR (TYPE_3__*) ;
 int MBCMD_DEFAULT_TIMEOUT ;
 int MBOX_TIMEOUT ;
 int PRIBIO ;
 int SBT_1US ;
 int isp_prt (TYPE_3__*,int ,char*,char*,int ,int,int ,int ) ;
 int msleep_sbt (int*,int *,int ,char*,int,int ,int ) ;

void
isp_mbox_wait_complete(ispsoftc_t *isp, mbreg_t *mbp)
{
 u_int t, to;

 to = (mbp->timeout == 0) ? MBCMD_DEFAULT_TIMEOUT : mbp->timeout;
 if (isp->isp_osinfo.mbox_sleep_ok) {
  isp->isp_osinfo.mbox_sleep_ok = 0;
  isp->isp_osinfo.mbox_sleeping = 1;
  msleep_sbt(&isp->isp_osinfo.mboxcmd_done, &isp->isp_lock,
      PRIBIO, "ispmbx_sleep", to * SBT_1US, 0, 0);
  isp->isp_osinfo.mbox_sleep_ok = 1;
  isp->isp_osinfo.mbox_sleeping = 0;
 } else {
  for (t = 0; t < to; t += 100) {
   if (isp->isp_osinfo.mboxcmd_done)
    break;
   ISP_RUN_ISR(isp);
   if (isp->isp_osinfo.mboxcmd_done)
    break;
   ISP_DELAY(100);
  }
 }
 if (isp->isp_osinfo.mboxcmd_done == 0) {
  isp_prt(isp, ISP_LOGWARN, "%s Mailbox Command (0x%x) Timeout (%uus) (%s:%d)",
      isp->isp_osinfo.mbox_sleep_ok? "Interrupting" : "Polled",
      isp->isp_lastmbxcmd, to, mbp->func, mbp->lineno);
  mbp->param[0] = MBOX_TIMEOUT;
  isp->isp_osinfo.mboxcmd_done = 1;
 }
}
