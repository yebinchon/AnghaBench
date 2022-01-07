
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cp15_pmcnten_clr (int) ;

__attribute__((used)) static __inline void
armv7_counter_disable(unsigned int pmc)
{
 uint32_t reg;

 reg = (1 << pmc);
 cp15_pmcnten_clr(reg);
}
