
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cp15_pminten_clr (int) ;

__attribute__((used)) static __inline void
armv7_interrupt_disable(uint32_t pmc)
{
 uint32_t reg;

 reg = (1 << pmc);
 cp15_pminten_clr(reg);
}
