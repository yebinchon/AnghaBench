
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUS_PROBE_GENERIC ;
 int MMU_TYPE_BOOKE ;
 int PPC_FEATURE_BOOKE ;
 int PSL_CE ;
 int PSL_CM ;
 int PSL_EE ;
 int PSL_FE0 ;
 int PSL_FE1 ;
 int PSL_FP ;
 int PSL_ME ;
 int PSL_PR ;
 int PSL_VEC ;
 int cpu_features ;
 int pmap_mmu_install (int ,int ) ;
 int psl_kernset ;
 int psl_userset ;
 int psl_userset32 ;
 int psl_userstatic ;

void
booke_cpu_init(void)
{

 cpu_features |= PPC_FEATURE_BOOKE;

 psl_kernset = PSL_CE | PSL_ME | PSL_EE;



 psl_userset = psl_kernset | PSL_PR;



 psl_userstatic = ~(PSL_VEC | PSL_FP | PSL_FE0 | PSL_FE1);

 pmap_mmu_install(MMU_TYPE_BOOKE, BUS_PROBE_GENERIC);
}
