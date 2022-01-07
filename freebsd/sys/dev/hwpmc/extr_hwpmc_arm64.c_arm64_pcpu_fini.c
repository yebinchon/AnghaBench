
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pmc_mdep {int dummy; } ;


 int PMCR_E ;
 int arm64_pmcr_read () ;
 int arm64_pmcr_write (int ) ;

__attribute__((used)) static int
arm64_pcpu_fini(struct pmc_mdep *md, int cpu)
{
 uint32_t pmcr;

 pmcr = arm64_pmcr_read();
 pmcr &= ~PMCR_E;
 arm64_pmcr_write(pmcr);

 return (0);
}
