
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long pmc_value_t ;


 int core_iaf_width ;

__attribute__((used)) static pmc_value_t
iaf_perfctr_value_to_reload_count(pmc_value_t v)
{


 if ((v & (1ULL << (core_iaf_width - 1))) == 0)
  return (0);
 v &= (1ULL << core_iaf_width) - 1;
 return (1ULL << core_iaf_width) - v;
}
