
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_fc {int simqfrozen; int * sim; } ;
typedef int ispsoftc_t ;


 struct isp_fc* ISP_FC_PC (int *,int) ;
 int ISP_LOGDEBUG0 ;
 int SIMQFRZ_LOOPDOWN ;
 int isp_prt (int *,int ,char*,int) ;
 int xpt_release_boot () ;
 int xpt_release_simq (int *,int) ;

__attribute__((used)) static void
isp_unfreeze_loopdown(ispsoftc_t *isp, int chan)
{
 struct isp_fc *fc = ISP_FC_PC(isp, chan);

 if (fc->sim == ((void*)0))
  return;
 int wasfrozen = fc->simqfrozen & SIMQFRZ_LOOPDOWN;
 fc->simqfrozen &= ~SIMQFRZ_LOOPDOWN;
 if (wasfrozen && fc->simqfrozen == 0) {
  isp_prt(isp, ISP_LOGDEBUG0,
      "Chan %d Release simq", chan);
  xpt_release_simq(fc->sim, 1);
  xpt_release_boot();
 }
}
