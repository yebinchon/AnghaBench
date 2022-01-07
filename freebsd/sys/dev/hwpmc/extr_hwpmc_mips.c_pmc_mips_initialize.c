
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_mdep {int pmd_npmc; int pmd_switch_out; int pmd_switch_in; int pmd_intr; struct pmc_classdep* pmd_classdep; int pmd_cputype; } ;
struct pmc_classdep {int pcd_num; int pcd_ri; int pcd_write_pmc; int pcd_stop_pmc; int pcd_start_pmc; int pcd_release_pmc; int pcd_read_pmc; int pcd_get_config; int pcd_describe; int pcd_pcpu_init; int pcd_pcpu_fini; int pcd_config_pmc; int pcd_allocate_pmc; int pcd_width; int pcd_class; int pcd_caps; } ;
struct mips_cpu {int dummy; } ;
struct TYPE_2__ {int ps_counter_width; int ps_cpuclass; int ps_capabilities; int ps_cputype; } ;


 int INI ;
 int MDP ;
 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PMCDBG1 (int ,int ,int,char*,int) ;
 size_t PMC_MDEP_CLASS_INDEX_MIPS ;
 int malloc (int,int ,int) ;
 int mips_allocate_pmc ;
 int mips_config_pmc ;
 int mips_describe ;
 int mips_get_config ;
 int mips_npmcs ;
 int mips_pcpu ;
 int mips_pcpu_fini ;
 int mips_pcpu_init ;
 int mips_pmc_intr ;
 TYPE_1__ mips_pmc_spec ;
 int mips_pmc_switch_in ;
 int mips_pmc_switch_out ;
 int mips_read_pmc ;
 int mips_release_pmc ;
 int mips_start_pmc ;
 int mips_stop_pmc ;
 int mips_write_pmc ;
 int pmc_cpu_max () ;
 struct pmc_mdep* pmc_mdep_alloc (int) ;

struct pmc_mdep *
pmc_mips_initialize()
{
 struct pmc_mdep *pmc_mdep;
 struct pmc_classdep *pcd;





 mips_npmcs = 2;

 PMCDBG1(MDP,INI,1,"mips-init npmcs=%d", mips_npmcs);





 mips_pcpu = malloc(sizeof(struct mips_cpu *) * pmc_cpu_max(), M_PMC,
      M_WAITOK|M_ZERO);


 pmc_mdep = pmc_mdep_alloc(1);

 pmc_mdep->pmd_cputype = mips_pmc_spec.ps_cputype;

 pcd = &pmc_mdep->pmd_classdep[PMC_MDEP_CLASS_INDEX_MIPS];
 pcd->pcd_caps = mips_pmc_spec.ps_capabilities;
 pcd->pcd_class = mips_pmc_spec.ps_cpuclass;
 pcd->pcd_num = mips_npmcs;
 pcd->pcd_ri = pmc_mdep->pmd_npmc;
 pcd->pcd_width = mips_pmc_spec.ps_counter_width;

 pcd->pcd_allocate_pmc = mips_allocate_pmc;
 pcd->pcd_config_pmc = mips_config_pmc;
 pcd->pcd_pcpu_fini = mips_pcpu_fini;
 pcd->pcd_pcpu_init = mips_pcpu_init;
 pcd->pcd_describe = mips_describe;
 pcd->pcd_get_config = mips_get_config;
 pcd->pcd_read_pmc = mips_read_pmc;
 pcd->pcd_release_pmc = mips_release_pmc;
 pcd->pcd_start_pmc = mips_start_pmc;
 pcd->pcd_stop_pmc = mips_stop_pmc;
  pcd->pcd_write_pmc = mips_write_pmc;

 pmc_mdep->pmd_intr = mips_pmc_intr;
 pmc_mdep->pmd_switch_in = mips_pmc_switch_in;
 pmc_mdep->pmd_switch_out = mips_pmc_switch_out;

 pmc_mdep->pmd_npmc += mips_npmcs;

 return (pmc_mdep);
}
