
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int WRITE_SPECIALREG (int ,int) ;
 int isb () ;
 int pmcntenset_el0 ;

__attribute__((used)) static __inline void
arm64_counter_enable(unsigned int pmc)
{
 uint32_t reg;

 reg = (1 << pmc);
 WRITE_SPECIALREG(pmcntenset_el0, reg);

 isb();
}
