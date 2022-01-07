
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t vm_offset_t ;
typedef uintptr_t u_long ;





 scalar_t__ __bss_start ;
 uintptr_t __endkernel ;
 scalar_t__ __sbss_end ;
 scalar_t__ __sbss_start ;
 scalar_t__ _end ;
 scalar_t__ booke_check_for_fdt (uintptr_t,uintptr_t*) ;
 int booke_enable_bpred () ;
 int booke_enable_l1_cache () ;
 int booke_enable_l2_cache () ;
 int * bootinfo ;
 int bzero (scalar_t__,scalar_t__) ;
 int cacheline_size ;
 scalar_t__ fdt_totalsize (void*) ;
 scalar_t__ kernload ;
 int memmove (void*,void*,scalar_t__) ;
 int mfpvr () ;
 uintptr_t powerpc_init (uintptr_t,int ,int ,void*,int) ;
 uintptr_t roundup (uintptr_t,int) ;
 int tlb1_init () ;

uintptr_t
booke_init(u_long arg1, u_long arg2)
{
 uintptr_t ret;
 void *mdp;
 vm_offset_t dtbp, end;

 end = (uintptr_t)_end;
 dtbp = (vm_offset_t)((void*)0);


 bootinfo = ((void*)0);
 bzero(__sbss_start, __sbss_end - __sbss_start);
 bzero(__bss_start, _end - __bss_start);
 tlb1_init();
 if (arg1 == 0)
  mdp = (void *)arg2;
 else if (booke_check_for_fdt(arg1, &dtbp) == 0) {
  end = roundup(end, 8);
  memmove((void *)end, (void *)dtbp, fdt_totalsize((void *)dtbp));
  dtbp = end;
  end += fdt_totalsize((void *)dtbp);
  __endkernel = end;
  mdp = ((void*)0);
 } else if (arg1 > (uintptr_t)kernload)
  mdp = (void *)arg1;
 else
  mdp = ((void*)0);


 switch ((mfpvr()) >> 16) {
 case 130:
 case 129:
 case 128:
  cacheline_size = 64;
  break;
 }





 ret = powerpc_init(dtbp, 0, 0, mdp, (mdp == ((void*)0)) ? 0 : 0xfb5d104d);


 booke_enable_l1_cache();
 booke_enable_l2_cache();

 booke_enable_bpred();

 return (ret);
}
