
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ IPSEC_MODULE_INCR ;
 scalar_t__ atomic_cmpset_rel_int (scalar_t__ volatile*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ipsec_kmod_exit(volatile u_int *cntr)
{
 u_int old, new;

 do {
  old = *cntr;
  new = old - IPSEC_MODULE_INCR;
 } while (atomic_cmpset_rel_int(cntr, old, new) == 0);
}
