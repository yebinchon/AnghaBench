
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* pmc_pmcdisp ;

int
pmc_getrowdisp(int ri)
{
 return pmc_pmcdisp[ri];
}
