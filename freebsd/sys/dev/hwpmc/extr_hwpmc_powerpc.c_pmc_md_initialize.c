
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct powerpc_cpu {int dummy; } ;
struct pmc_mdep {int pmd_switch_out; int pmd_switch_in; } ;
 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;
 int mfpvr () ;
 int pmc_cpu_max () ;
 int pmc_e500_initialize (struct pmc_mdep*) ;
 struct pmc_mdep* pmc_mdep_alloc (int) ;
 int pmc_mdep_free (struct pmc_mdep*) ;
 int pmc_mpc7xxx_initialize (struct pmc_mdep*) ;
 int pmc_ppc970_initialize (struct pmc_mdep*) ;
 int powerpc_pcpu ;
 int powerpc_switch_in ;
 int powerpc_switch_out ;

struct pmc_mdep *
pmc_md_initialize()
{
 struct pmc_mdep *pmc_mdep;
 int error;
 uint16_t vers;





 powerpc_pcpu = malloc(sizeof(struct powerpc_cpu *) * pmc_cpu_max(), M_PMC,
      M_WAITOK|M_ZERO);


 pmc_mdep = pmc_mdep_alloc(1);

 vers = mfpvr() >> 16;

 pmc_mdep->pmd_switch_in = powerpc_switch_in;
 pmc_mdep->pmd_switch_out = powerpc_switch_out;

 switch (vers) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  error = pmc_mpc7xxx_initialize(pmc_mdep);
  break;
 case 135:
 case 134:
 case 133:
  error = pmc_ppc970_initialize(pmc_mdep);
  break;
 case 138:
 case 137:
 case 139:
 case 136:
  error = pmc_e500_initialize(pmc_mdep);
  break;
 default:
  error = -1;
  break;
 }

 if (error != 0) {
  pmc_mdep_free(pmc_mdep);
  pmc_mdep = ((void*)0);
 }

 return (pmc_mdep);
}
