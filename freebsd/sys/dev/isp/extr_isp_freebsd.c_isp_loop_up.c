
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_fc {int loop_seen_once; scalar_t__ loop_down_time; } ;
typedef int ispsoftc_t ;


 struct isp_fc* ISP_FC_PC (int *,int) ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOG_SANCFG ;
 int isp_prt (int *,int,char*,int) ;
 int isp_unfreeze_loopdown (int *,int) ;

__attribute__((used)) static void
isp_loop_up(ispsoftc_t *isp, int chan)
{
 struct isp_fc *fc = ISP_FC_PC(isp, chan);

 isp_prt(isp, ISP_LOG_SANCFG|ISP_LOGDEBUG0, "Chan %d Loop is up", chan);
 fc->loop_seen_once = 1;
 fc->loop_down_time = 0;
 isp_unfreeze_loopdown(isp, chan);
}
