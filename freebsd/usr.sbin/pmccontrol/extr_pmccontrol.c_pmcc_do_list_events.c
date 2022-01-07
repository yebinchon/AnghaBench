
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmc_pmu_print_counters (int *) ;

__attribute__((used)) static int
pmcc_do_list_events(void)
{
 pmc_pmu_print_counters(((void*)0));
 return (0);
}
