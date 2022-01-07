
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long pmc_value_t ;


 unsigned long long uncore_ucp_width ;

__attribute__((used)) static pmc_value_t
ucp_perfctr_value_to_reload_count(pmc_value_t v)
{
 v &= (1ULL << uncore_ucp_width) - 1;
 return (1ULL << uncore_ucp_width) - v;
}
