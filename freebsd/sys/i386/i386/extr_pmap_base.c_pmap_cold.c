
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bi_envp; } ;


 int CPUID_PAE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 TYPE_1__ bootinfo ;
 int cpu_feature ;
 int init_static_kenv (char*,int ) ;
 int pae_mode ;
 int * pmap_methods_ptr ;
 int pmap_nopae_cold () ;
 int pmap_nopae_methods ;
 int pmap_pae_cold () ;
 int pmap_pae_methods ;

void
pmap_cold(void)
{

 init_static_kenv((char *)bootinfo.bi_envp, 0);
 pae_mode = (cpu_feature & CPUID_PAE) != 0;
 if (pae_mode)
  TUNABLE_INT_FETCH("vm.pmap.pae_mode", &pae_mode);
 if (pae_mode) {
  pmap_methods_ptr = &pmap_pae_methods;
  pmap_pae_cold();
 } else {
  pmap_methods_ptr = &pmap_nopae_methods;
  pmap_nopae_cold();
 }
}
