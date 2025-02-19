
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ALL ;
 int MDP ;
 int MIPS74K_PMC_ENABLE ;
 int MIPS74K_PMC_INTERRUPT_ENABLE ;
 int MIPS74K_PMC_KERNEL_ENABLE ;
 int MIPS74K_PMC_SELECT ;
 int MIPS74K_PMC_SUPER_ENABLE ;
 int MIPS74K_PMC_USER_ENABLE ;
 int PMCDBG2 (int ,int ,int,char*,int,int) ;
 int PMC_CAP_INTERRUPT ;
 int PMC_CAP_SYSTEM ;
 int PMC_CAP_USER ;

uint32_t
mips_get_perfctl(int cpu, int ri, uint32_t event, uint32_t caps)
{
 uint32_t config;

 config = event;

 config <<= MIPS74K_PMC_SELECT;

 if (caps & PMC_CAP_SYSTEM)
  config |= (MIPS74K_PMC_SUPER_ENABLE |
      MIPS74K_PMC_KERNEL_ENABLE);
 if (caps & PMC_CAP_USER)
  config |= MIPS74K_PMC_USER_ENABLE;
 if ((caps & (PMC_CAP_USER | PMC_CAP_SYSTEM)) == 0)
  config |= MIPS74K_PMC_ENABLE;
 if (caps & PMC_CAP_INTERRUPT)
  config |= MIPS74K_PMC_INTERRUPT_ENABLE;

 PMCDBG2(MDP,ALL,2,"mips74k-get_perfctl ri=%d -> config=0x%x", ri, config);

 return (config);
}
