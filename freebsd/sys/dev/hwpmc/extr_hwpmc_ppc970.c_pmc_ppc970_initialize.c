
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int pmd_intr; int pmd_npmc; struct pmc_classdep* pmd_classdep; int pmd_cputype; } ;
struct pmc_classdep {int pcd_width; int pcd_write_pmc; int pcd_stop_pmc; int pcd_start_pmc; int pcd_release_pmc; int pcd_read_pmc; int pcd_get_config; int pcd_describe; int pcd_pcpu_init; int pcd_pcpu_fini; int pcd_config_pmc; int pcd_allocate_pmc; int pcd_ri; scalar_t__ pcd_num; int pcd_class; int pcd_caps; } ;


 int PMC_CLASS_PPC970 ;
 int PMC_CPU_PPC_970 ;
 size_t PMC_MDEP_CLASS_INDEX_POWERPC ;
 int POWERPC_PMC_CAPS ;
 scalar_t__ PPC970_MAX_PMCS ;
 int powerpc_describe ;
 int powerpc_get_config ;
 int ppc970_allocate_pmc ;
 int ppc970_config_pmc ;
 int ppc970_intr ;
 int ppc970_pcpu_fini ;
 int ppc970_pcpu_init ;
 int ppc970_read_pmc ;
 int ppc970_release_pmc ;
 int ppc970_start_pmc ;
 int ppc970_stop_pmc ;
 int ppc970_write_pmc ;

int
pmc_ppc970_initialize(struct pmc_mdep *pmc_mdep)
{
 struct pmc_classdep *pcd;

 pmc_mdep->pmd_cputype = PMC_CPU_PPC_970;

 pcd = &pmc_mdep->pmd_classdep[PMC_MDEP_CLASS_INDEX_POWERPC];
 pcd->pcd_caps = POWERPC_PMC_CAPS;
 pcd->pcd_class = PMC_CLASS_PPC970;
 pcd->pcd_num = PPC970_MAX_PMCS;
 pcd->pcd_ri = pmc_mdep->pmd_npmc;
 pcd->pcd_width = 32;

 pcd->pcd_allocate_pmc = ppc970_allocate_pmc;
 pcd->pcd_config_pmc = ppc970_config_pmc;
 pcd->pcd_pcpu_fini = ppc970_pcpu_fini;
 pcd->pcd_pcpu_init = ppc970_pcpu_init;
 pcd->pcd_describe = powerpc_describe;
 pcd->pcd_get_config = powerpc_get_config;
 pcd->pcd_read_pmc = ppc970_read_pmc;
 pcd->pcd_release_pmc = ppc970_release_pmc;
 pcd->pcd_start_pmc = ppc970_start_pmc;
 pcd->pcd_stop_pmc = ppc970_stop_pmc;
  pcd->pcd_write_pmc = ppc970_write_pmc;

 pmc_mdep->pmd_npmc += PPC970_MAX_PMCS;
 pmc_mdep->pmd_intr = ppc970_intr;

 return (0);
}
