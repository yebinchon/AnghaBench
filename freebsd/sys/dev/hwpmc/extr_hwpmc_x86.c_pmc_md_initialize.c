
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_mdep {int pmd_nclass; TYPE_1__* pmd_classdep; } ;
struct TYPE_2__ {int pcd_caps; } ;


 scalar_t__ CPU_VENDOR_AMD ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int PMC_CAP_INTERRUPT ;
 int PMC_CLASS_INDEX_SOFT ;
 scalar_t__ cpu_vendor_id ;
 int lapic_enable_pmc () ;
 struct pmc_mdep* pmc_amd_initialize () ;
 struct pmc_mdep* pmc_intel_initialize () ;

struct pmc_mdep *
pmc_md_initialize()
{
 int i;
 struct pmc_mdep *md;


 if (cpu_vendor_id == CPU_VENDOR_AMD)
  md = pmc_amd_initialize();
 else if (cpu_vendor_id == CPU_VENDOR_INTEL)
  md = pmc_intel_initialize();
 else
  return (((void*)0));


 if (md != ((void*)0) && !lapic_enable_pmc())
  for (i = 0; i < md->pmd_nclass; i++) {
   if (i == PMC_CLASS_INDEX_SOFT)
    continue;
   md->pmd_classdep[i].pcd_caps &= ~PMC_CAP_INTERRUPT;
  }

 return (md);
}
