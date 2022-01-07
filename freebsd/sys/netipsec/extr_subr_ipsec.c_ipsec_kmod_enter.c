
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int ENXIO ;
 int IPSEC_MODULE_ENABLED ;
 int IPSEC_MODULE_INCR ;
 scalar_t__ atomic_cmpset_acq_int (int volatile*,int,int) ;

__attribute__((used)) static int
ipsec_kmod_enter(volatile u_int *cntr)
{
 u_int old, new;

 do {
  old = *cntr;
  if ((old & IPSEC_MODULE_ENABLED) == 0)
   return (ENXIO);
  new = old + IPSEC_MODULE_INCR;
 } while(atomic_cmpset_acq_int(cntr, old, new) == 0);
 return (0);
}
