
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC970N_NONE ;
 int ppc970_set_pmc (int,int,int ) ;

__attribute__((used)) static int
ppc970_stop_pmc(int cpu, int ri)
{
 return ppc970_set_pmc(cpu, ri, PMC970N_NONE);
}
