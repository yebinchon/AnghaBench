
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int READ_SPECIALREG (int ) ;
 int pmcr_el0 ;

__attribute__((used)) static uint32_t
arm64_pmcr_read(void)
{
 uint32_t reg;

 reg = READ_SPECIALREG(pmcr_el0);

 return (reg);
}
