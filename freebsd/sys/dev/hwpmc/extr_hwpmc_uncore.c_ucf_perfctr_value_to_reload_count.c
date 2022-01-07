
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long pmc_value_t ;


 unsigned long long uncore_ucf_width ;

__attribute__((used)) static pmc_value_t
ucf_perfctr_value_to_reload_count(pmc_value_t v)
{
 v &= (1ULL << uncore_ucf_width) - 1;
 return (1ULL << uncore_ucf_width) - v;
}
