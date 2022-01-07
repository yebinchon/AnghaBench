
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pmc_mdep {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* pc_ppcpmcs; } ;


 int M_PMC ;
 int PMGC_FAC ;
 int PMR_PMGC0 ;
 int PSL_PMM ;
 int free (TYPE_1__*,int ) ;
 int mfmsr () ;
 int mfpmr (int ) ;
 int mtmsr (int) ;
 int mtpmr (int ,int ) ;
 TYPE_1__** powerpc_pcpu ;

__attribute__((used)) static int
e500_pcpu_fini(struct pmc_mdep *md, int cpu)
{
 uint32_t pmgc0 = mfpmr(PMR_PMGC0);

 pmgc0 |= PMGC_FAC;
 mtpmr(PMR_PMGC0, pmgc0);
 mtmsr(mfmsr() & ~PSL_PMM);

 free(powerpc_pcpu[cpu]->pc_ppcpmcs, M_PMC);
 free(powerpc_pcpu[cpu], M_PMC);

 return 0;
}
