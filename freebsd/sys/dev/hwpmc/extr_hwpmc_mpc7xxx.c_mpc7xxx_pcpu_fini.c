
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pmc_mdep {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* pc_ppcpmcs; } ;


 int M_PMC ;
 int PSL_PMM ;
 int SPR_MMCR0 ;
 int SPR_MMCR0_FC ;
 int free (TYPE_1__*,int ) ;
 int mfmsr () ;
 int mfspr (int ) ;
 int mtmsr (int) ;
 int mtspr (int ,int ) ;
 TYPE_1__** powerpc_pcpu ;

__attribute__((used)) static int
mpc7xxx_pcpu_fini(struct pmc_mdep *md, int cpu)
{
 uint32_t mmcr0 = mfspr(SPR_MMCR0);

 mtmsr(mfmsr() & ~PSL_PMM);
 mmcr0 |= SPR_MMCR0_FC;
 mtspr(SPR_MMCR0, mmcr0);

 free(powerpc_pcpu[cpu]->pc_ppcpmcs, M_PMC);
 free(powerpc_pcpu[cpu], M_PMC);

 return 0;
}
