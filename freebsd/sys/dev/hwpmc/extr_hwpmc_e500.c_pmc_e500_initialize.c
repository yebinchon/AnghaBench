
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int pmd_intr; int pmd_npmc; struct pmc_classdep* pmd_classdep; int pmd_cputype; } ;
struct pmc_classdep {int pcd_width; int pcd_write_pmc; int pcd_stop_pmc; int pcd_start_pmc; int pcd_release_pmc; int pcd_read_pmc; int pcd_get_config; int pcd_describe; int pcd_pcpu_init; int pcd_pcpu_fini; int pcd_config_pmc; int pcd_allocate_pmc; int pcd_ri; scalar_t__ pcd_num; int pcd_class; int pcd_caps; } ;


 scalar_t__ E500_MAX_PMCS ;
 int PMC_CLASS_E500 ;
 int PMC_CPU_PPC_E500 ;
 size_t PMC_MDEP_CLASS_INDEX_POWERPC ;
 int POWERPC_PMC_CAPS ;
 int e500_allocate_pmc ;
 int e500_config_pmc ;
 int e500_intr ;
 int e500_pcpu_fini ;
 int e500_pcpu_init ;
 int e500_read_pmc ;
 int e500_release_pmc ;
 int e500_start_pmc ;
 int e500_stop_pmc ;
 int e500_write_pmc ;
 int powerpc_describe ;
 int powerpc_get_config ;

int
pmc_e500_initialize(struct pmc_mdep *pmc_mdep)
{
 struct pmc_classdep *pcd;

 pmc_mdep->pmd_cputype = PMC_CPU_PPC_E500;

 pcd = &pmc_mdep->pmd_classdep[PMC_MDEP_CLASS_INDEX_POWERPC];
 pcd->pcd_caps = POWERPC_PMC_CAPS;
 pcd->pcd_class = PMC_CLASS_E500;
 pcd->pcd_num = E500_MAX_PMCS;
 pcd->pcd_ri = pmc_mdep->pmd_npmc;
 pcd->pcd_width = 32;

 pcd->pcd_allocate_pmc = e500_allocate_pmc;
 pcd->pcd_config_pmc = e500_config_pmc;
 pcd->pcd_pcpu_fini = e500_pcpu_fini;
 pcd->pcd_pcpu_init = e500_pcpu_init;
 pcd->pcd_describe = powerpc_describe;
 pcd->pcd_get_config = powerpc_get_config;
 pcd->pcd_read_pmc = e500_read_pmc;
 pcd->pcd_release_pmc = e500_release_pmc;
 pcd->pcd_start_pmc = e500_start_pmc;
 pcd->pcd_stop_pmc = e500_stop_pmc;
  pcd->pcd_write_pmc = e500_write_pmc;

 pmc_mdep->pmd_npmc += E500_MAX_PMCS;
 pmc_mdep->pmd_intr = e500_intr;

 return (0);
}
