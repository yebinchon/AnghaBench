
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_process {int dummy; } ;
struct pmc_cpu {int dummy; } ;



__attribute__((used)) static int
generic_switch_in(struct pmc_cpu *pc, struct pmc_process *pp)
{
 (void) pc; (void) pp;

 return (0);
}
