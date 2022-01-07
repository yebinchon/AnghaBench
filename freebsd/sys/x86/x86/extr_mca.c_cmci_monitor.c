
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cmc_state {int max_threshold; } ;


 int KASSERT (int,char*) ;
 int MC_CTL2_CMCI_EN ;
 int MC_CTL2_THRESHOLD ;
 int MSR_MC_CTL2 (int) ;
 int PCPU_GET (int ) ;
 int PCPU_SET (int ,int) ;
 struct cmc_state** cmc_state ;
 int cmci_mask ;
 int cpuid ;
 int mca_banks ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static void
cmci_monitor(int i)
{
 struct cmc_state *cc;
 uint64_t ctl;

 KASSERT(i < mca_banks, ("CPU %d has more MC banks", PCPU_GET(cpuid)));

 ctl = rdmsr(MSR_MC_CTL2(i));
 if (ctl & MC_CTL2_CMCI_EN)

  return;


 ctl &= ~MC_CTL2_THRESHOLD;
 ctl |= MC_CTL2_CMCI_EN | 1;
 wrmsr(MSR_MC_CTL2(i), ctl);
 ctl = rdmsr(MSR_MC_CTL2(i));
 if (!(ctl & MC_CTL2_CMCI_EN))

  return;

 cc = &cmc_state[PCPU_GET(cpuid)][i];


 ctl &= ~MC_CTL2_THRESHOLD;
 ctl |= 0x7fff;
 wrmsr(MSR_MC_CTL2(i), ctl);
 ctl = rdmsr(MSR_MC_CTL2(i));
 cc->max_threshold = ctl & MC_CTL2_THRESHOLD;


 ctl &= ~MC_CTL2_THRESHOLD;
 ctl |= 1;
 wrmsr(MSR_MC_CTL2(i), ctl);


 PCPU_SET(cmci_mask, PCPU_GET(cmci_mask) | 1 << i);
}
