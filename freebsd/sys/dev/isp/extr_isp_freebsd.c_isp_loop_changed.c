
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct isp_fc {scalar_t__ loop_down_time; } ;
typedef int ispsoftc_t ;
struct TYPE_3__ {int role; } ;
typedef TYPE_1__ fcparam ;


 TYPE_1__* FCPARAM (int *,int) ;
 struct isp_fc* ISP_FC_PC (int *,int) ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOG_SANCFG ;
 int ISP_ROLE_INITIATOR ;
 int isp_freeze_loopdown (int *,int) ;
 int isp_prt (int *,int,char*,int) ;
 scalar_t__ time_uptime ;
 int wakeup (struct isp_fc*) ;

__attribute__((used)) static void
isp_loop_changed(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 struct isp_fc *fc = ISP_FC_PC(isp, chan);

 if (fc->loop_down_time)
  return;
 isp_prt(isp, ISP_LOG_SANCFG|ISP_LOGDEBUG0, "Chan %d Loop changed", chan);
 if (fcp->role & ISP_ROLE_INITIATOR)
  isp_freeze_loopdown(isp, chan);
 fc->loop_down_time = time_uptime;
 wakeup(fc);
}
