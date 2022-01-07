
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int dummy; } ;



__attribute__((used)) static int
uncore_pcpu_noop(struct pmc_mdep *md, int cpu)
{
 (void) md;
 (void) cpu;
 return (0);
}
