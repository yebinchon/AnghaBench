
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int pmd_npmc; int pmd_switch_out; int pmd_switch_in; int pmd_intr; struct pmc_classdep* pmd_classdep; int pmd_cputype; } ;
struct pmc_classdep {int pcd_num; int pcd_ri; int pcd_width; int pcd_write_pmc; int pcd_stop_pmc; int pcd_start_pmc; int pcd_release_pmc; int pcd_read_pmc; int pcd_get_config; int pcd_describe; int pcd_pcpu_init; int pcd_pcpu_fini; int pcd_config_pmc; int pcd_allocate_pmc; int pcd_class; int pcd_caps; } ;
struct arm64_cpu {int dummy; } ;


 int ARMV8_PMC_CAPS ;
 int INI ;
 int MDP ;
 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PMCDBG1 (int ,int ,int,char*,int) ;



 int PMCR_IDCODE_MASK ;
 int PMCR_IDCODE_SHIFT ;
 int PMCR_N_MASK ;
 int PMCR_N_SHIFT ;
 int PMC_CLASS_ARMV8 ;
 int PMC_CPU_ARMV8_CORTEX_A53 ;
 int PMC_CPU_ARMV8_CORTEX_A57 ;
 size_t PMC_MDEP_CLASS_INDEX_ARMV8 ;
 int arm64_allocate_pmc ;
 int arm64_config_pmc ;
 int arm64_describe ;
 int arm64_get_config ;
 int arm64_intr ;
 int arm64_npmcs ;
 int arm64_pcpu ;
 int arm64_pcpu_fini ;
 int arm64_pcpu_init ;
 int arm64_pmcr_read () ;
 int arm64_read_pmc ;
 int arm64_release_pmc ;
 int arm64_start_pmc ;
 int arm64_stop_pmc ;
 int arm64_switch_in ;
 int arm64_switch_out ;
 int arm64_write_pmc ;
 int malloc (int,int ,int) ;
 int pmc_cpu_max () ;
 struct pmc_mdep* pmc_mdep_alloc (int) ;

struct pmc_mdep *
pmc_arm64_initialize()
{
 struct pmc_mdep *pmc_mdep;
 struct pmc_classdep *pcd;
 int idcode;
 int reg;

 reg = arm64_pmcr_read();
 arm64_npmcs = (reg & PMCR_N_MASK) >> PMCR_N_SHIFT;
 idcode = (reg & PMCR_IDCODE_MASK) >> PMCR_IDCODE_SHIFT;

 PMCDBG1(MDP, INI, 1, "arm64-init npmcs=%d", arm64_npmcs);





 arm64_pcpu = malloc(sizeof(struct arm64_cpu *) * pmc_cpu_max(),
  M_PMC, M_WAITOK | M_ZERO);


 pmc_mdep = pmc_mdep_alloc(1);

 switch (idcode) {
 case 129:
 case 128:
  pmc_mdep->pmd_cputype = PMC_CPU_ARMV8_CORTEX_A57;
  break;
 default:
 case 130:
  pmc_mdep->pmd_cputype = PMC_CPU_ARMV8_CORTEX_A53;
  break;
 }

 pcd = &pmc_mdep->pmd_classdep[PMC_MDEP_CLASS_INDEX_ARMV8];
 pcd->pcd_caps = ARMV8_PMC_CAPS;
 pcd->pcd_class = PMC_CLASS_ARMV8;
 pcd->pcd_num = arm64_npmcs;
 pcd->pcd_ri = pmc_mdep->pmd_npmc;
 pcd->pcd_width = 32;

 pcd->pcd_allocate_pmc = arm64_allocate_pmc;
 pcd->pcd_config_pmc = arm64_config_pmc;
 pcd->pcd_pcpu_fini = arm64_pcpu_fini;
 pcd->pcd_pcpu_init = arm64_pcpu_init;
 pcd->pcd_describe = arm64_describe;
 pcd->pcd_get_config = arm64_get_config;
 pcd->pcd_read_pmc = arm64_read_pmc;
 pcd->pcd_release_pmc = arm64_release_pmc;
 pcd->pcd_start_pmc = arm64_start_pmc;
 pcd->pcd_stop_pmc = arm64_stop_pmc;
 pcd->pcd_write_pmc = arm64_write_pmc;

 pmc_mdep->pmd_intr = arm64_intr;
 pmc_mdep->pmd_switch_in = arm64_switch_in;
 pmc_mdep->pmd_switch_out = arm64_switch_out;

 pmc_mdep->pmd_npmc += arm64_npmcs;

 return (pmc_mdep);
}
