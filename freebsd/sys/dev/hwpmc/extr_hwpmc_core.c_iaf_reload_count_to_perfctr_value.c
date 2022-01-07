
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pmc_value_t ;


 unsigned long long core_iaf_width ;

__attribute__((used)) static pmc_value_t
iaf_reload_count_to_perfctr_value(pmc_value_t rlc)
{
 return (1ULL << core_iaf_width) - rlc;
}
