
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int IPSEC_MODULE_ENABLED ;
 scalar_t__ atomic_cmpset_acq_int (int volatile*,int,int) ;
 scalar_t__ atomic_cmpset_int (int volatile*,int ,int ) ;
 int hz ;
 int pause (char*,int) ;

__attribute__((used)) static void
ipsec_kmod_drain(volatile u_int *cntr)
{
 u_int old, new;

 do {
  old = *cntr;
  new = old & ~IPSEC_MODULE_ENABLED;
 } while (atomic_cmpset_acq_int(cntr, old, new) == 0);
 while (atomic_cmpset_int(cntr, 0, 0) == 0)
  pause("ipsecd", hz/2);
}
