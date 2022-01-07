
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int pmd_npmc; int pmd_switch_out; int pmd_switch_in; int pmd_intr; struct pmc_classdep* pmd_classdep; int pmd_cputype; } ;
struct pmc_classdep {int pcd_num; int pcd_ri; int pcd_width; int pcd_write_pmc; int pcd_stop_pmc; int pcd_start_pmc; int pcd_release_pmc; int pcd_read_pmc; int pcd_get_config; int pcd_describe; int pcd_pcpu_init; int pcd_pcpu_fini; int pcd_config_pmc; int pcd_allocate_pmc; int pcd_class; int pcd_caps; } ;
struct armv7_cpu {int dummy; } ;




 int ARMV7_IDCODE_MASK ;
 int ARMV7_IDCODE_SHIFT ;
 int ARMV7_PMC_CAPS ;
 int ARMV7_PMNC_N_MASK ;
 int ARMV7_PMNC_N_SHIFT ;
 int INI ;
 int MDP ;
 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PMCDBG1 (int ,int ,int,char*,int) ;
 int PMC_CLASS_ARMV7 ;
 int PMC_CPU_ARMV7_CORTEX_A8 ;
 int PMC_CPU_ARMV7_CORTEX_A9 ;
 size_t PMC_MDEP_CLASS_INDEX_ARMV7 ;
 int armv7_allocate_pmc ;
 int armv7_config_pmc ;
 int armv7_describe ;
 int armv7_get_config ;
 int armv7_intr ;
 int armv7_npmcs ;
 int armv7_pcpu ;
 int armv7_pcpu_fini ;
 int armv7_pcpu_init ;
 int armv7_read_pmc ;
 int armv7_release_pmc ;
 int armv7_start_pmc ;
 int armv7_stop_pmc ;
 int armv7_switch_in ;
 int armv7_switch_out ;
 int armv7_write_pmc ;
 int cp15_pmcr_get () ;
 int malloc (int,int ,int) ;
 int pmc_cpu_max () ;
 struct pmc_mdep* pmc_mdep_alloc (int) ;

struct pmc_mdep *
pmc_armv7_initialize()
{
 struct pmc_mdep *pmc_mdep;
 struct pmc_classdep *pcd;
 int idcode;
 int reg;

 reg = cp15_pmcr_get();
 armv7_npmcs = (reg >> ARMV7_PMNC_N_SHIFT) & ARMV7_PMNC_N_MASK;

 idcode = (reg & ARMV7_IDCODE_MASK) >> ARMV7_IDCODE_SHIFT;

 PMCDBG1(MDP, INI, 1, "armv7-init npmcs=%d", armv7_npmcs);





 armv7_pcpu = malloc(sizeof(struct armv7_cpu *) * pmc_cpu_max(),
  M_PMC, M_WAITOK | M_ZERO);


 pmc_mdep = pmc_mdep_alloc(1);

 switch (idcode) {
 case 128:
  pmc_mdep->pmd_cputype = PMC_CPU_ARMV7_CORTEX_A9;
  break;
 default:
 case 129:




  pmc_mdep->pmd_cputype = PMC_CPU_ARMV7_CORTEX_A8;
  break;
 }

 pcd = &pmc_mdep->pmd_classdep[PMC_MDEP_CLASS_INDEX_ARMV7];
 pcd->pcd_caps = ARMV7_PMC_CAPS;
 pcd->pcd_class = PMC_CLASS_ARMV7;
 pcd->pcd_num = armv7_npmcs;
 pcd->pcd_ri = pmc_mdep->pmd_npmc;
 pcd->pcd_width = 32;

 pcd->pcd_allocate_pmc = armv7_allocate_pmc;
 pcd->pcd_config_pmc = armv7_config_pmc;
 pcd->pcd_pcpu_fini = armv7_pcpu_fini;
 pcd->pcd_pcpu_init = armv7_pcpu_init;
 pcd->pcd_describe = armv7_describe;
 pcd->pcd_get_config = armv7_get_config;
 pcd->pcd_read_pmc = armv7_read_pmc;
 pcd->pcd_release_pmc = armv7_release_pmc;
 pcd->pcd_start_pmc = armv7_start_pmc;
 pcd->pcd_stop_pmc = armv7_stop_pmc;
 pcd->pcd_write_pmc = armv7_write_pmc;

 pmc_mdep->pmd_intr = armv7_intr;
 pmc_mdep->pmd_switch_in = armv7_switch_in;
 pmc_mdep->pmd_switch_out = armv7_switch_out;

 pmc_mdep->pmd_npmc += armv7_npmcs;

 return (pmc_mdep);
}
