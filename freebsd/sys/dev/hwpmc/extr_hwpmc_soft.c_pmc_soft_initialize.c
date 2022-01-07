
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soft_cpu {int dummy; } ;
struct pmc_mdep {int pmd_npmc; struct pmc_classdep* pmd_classdep; } ;
struct pmc_classdep {int pcd_width; int pcd_stop_pmc; int pcd_start_pmc; int pcd_release_pmc; int pcd_write_pmc; int pcd_read_pmc; int pcd_pcpu_fini; int pcd_pcpu_init; int * pcd_get_msr; int pcd_get_config; int pcd_describe; int pcd_config_pmc; int pcd_allocate_pmc; int pcd_ri; scalar_t__ pcd_num; int pcd_class; int pcd_caps; } ;


 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 size_t PMC_CLASS_INDEX_SOFT ;
 int PMC_CLASS_SOFT ;
 int SOFT_CAPS ;
 scalar_t__ SOFT_NPMCS ;
 int malloc (int,int ,int) ;
 int pmc_cpu_max () ;
 int soft_allocate_pmc ;
 int soft_config_pmc ;
 int soft_describe ;
 int soft_get_config ;
 int soft_pcpu ;
 int soft_pcpu_fini ;
 int soft_pcpu_init ;
 int soft_read_pmc ;
 int soft_release_pmc ;
 int soft_start_pmc ;
 int soft_stop_pmc ;
 int soft_write_pmc ;

void
pmc_soft_initialize(struct pmc_mdep *md)
{
 struct pmc_classdep *pcd;


 soft_pcpu = malloc(sizeof(struct soft_cpu *) * pmc_cpu_max(), M_PMC,
     M_ZERO|M_WAITOK);

 pcd = &md->pmd_classdep[PMC_CLASS_INDEX_SOFT];

 pcd->pcd_caps = SOFT_CAPS;
 pcd->pcd_class = PMC_CLASS_SOFT;
 pcd->pcd_num = SOFT_NPMCS;
 pcd->pcd_ri = md->pmd_npmc;
 pcd->pcd_width = 64;

 pcd->pcd_allocate_pmc = soft_allocate_pmc;
 pcd->pcd_config_pmc = soft_config_pmc;
 pcd->pcd_describe = soft_describe;
 pcd->pcd_get_config = soft_get_config;
 pcd->pcd_get_msr = ((void*)0);
 pcd->pcd_pcpu_init = soft_pcpu_init;
 pcd->pcd_pcpu_fini = soft_pcpu_fini;
 pcd->pcd_read_pmc = soft_read_pmc;
 pcd->pcd_write_pmc = soft_write_pmc;
 pcd->pcd_release_pmc = soft_release_pmc;
 pcd->pcd_start_pmc = soft_start_pmc;
 pcd->pcd_stop_pmc = soft_stop_pmc;

 md->pmd_npmc += SOFT_NPMCS;
}
