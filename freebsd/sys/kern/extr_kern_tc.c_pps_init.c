
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_state {int ppscap; int kcmode; } ;


 int KCMODE_ABIFLAG ;
 int PPS_CANWAIT ;
 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int PPS_OFFSETASSERT ;
 int PPS_OFFSETCLEAR ;
 int PPS_TSCLK_MASK ;
 int PPS_TSFMT_TSPEC ;

void
pps_init(struct pps_state *pps)
{
 pps->ppscap |= PPS_TSFMT_TSPEC | PPS_CANWAIT;
 if (pps->ppscap & PPS_CAPTUREASSERT)
  pps->ppscap |= PPS_OFFSETASSERT;
 if (pps->ppscap & PPS_CAPTURECLEAR)
  pps->ppscap |= PPS_OFFSETCLEAR;



 pps->kcmode &= ~KCMODE_ABIFLAG;
}
