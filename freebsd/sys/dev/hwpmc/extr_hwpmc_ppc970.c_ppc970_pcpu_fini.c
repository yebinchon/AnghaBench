
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pmc_mdep {int dummy; } ;
typedef int register_t ;
struct TYPE_3__ {struct TYPE_3__* pc_ppcpmcs; } ;


 int M_PMC ;
 int SPR_MMCR0 ;
 int SPR_MMCR0_FC ;
 int SPR_MMCR0_PMXE ;
 int free (TYPE_1__*,int ) ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 TYPE_1__** powerpc_pcpu ;

__attribute__((used)) static int
ppc970_pcpu_fini(struct pmc_mdep *md, int cpu)
{
 register_t mmcr0 = mfspr(SPR_MMCR0);

 mmcr0 |= SPR_MMCR0_FC;
 mmcr0 &= ~SPR_MMCR0_PMXE;
 mtspr(SPR_MMCR0, mmcr0);

 free(powerpc_pcpu[cpu]->pc_ppcpmcs, M_PMC);
 free(powerpc_pcpu[cpu], M_PMC);

 return 0;
}
