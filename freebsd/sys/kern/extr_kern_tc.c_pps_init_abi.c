
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_state {scalar_t__ driver_abi; int kernel_abi; int kcmode; } ;


 int KCMODE_ABIFLAG ;
 int PPS_ABI_VERSION ;
 int pps_init (struct pps_state*) ;

void
pps_init_abi(struct pps_state *pps)
{

 pps_init(pps);
 if (pps->driver_abi > 0) {
  pps->kcmode |= KCMODE_ABIFLAG;
  pps->kernel_abi = PPS_ABI_VERSION;
 }
}
