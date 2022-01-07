
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cmc_state {scalar_t__ last_intr; } ;


 int KASSERT (int,char*) ;
 int MC_CTL2_CMCI_EN ;
 int MC_CTL2_THRESHOLD ;
 int MSR_MC_CTL2 (int) ;
 size_t PCPU_GET (int ) ;
 struct cmc_state** cmc_state ;
 int cmci_mask ;
 int cpuid ;
 int mca_banks ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static void
cmci_resume(int i)
{
 struct cmc_state *cc;
 uint64_t ctl;

 KASSERT(i < mca_banks, ("CPU %d has more MC banks", PCPU_GET(cpuid)));


 if (!(PCPU_GET(cmci_mask) & 1 << i))
  return;

 cc = &cmc_state[PCPU_GET(cpuid)][i];
 cc->last_intr = 0;
 ctl = rdmsr(MSR_MC_CTL2(i));
 ctl &= ~MC_CTL2_THRESHOLD;
 ctl |= MC_CTL2_CMCI_EN | 1;
 wrmsr(MSR_MC_CTL2(i), ctl);
}
