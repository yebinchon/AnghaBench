
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int WRITE_SPECIALREG (int ,int ) ;
 int isb () ;
 int pmcr_el0 ;

__attribute__((used)) static void
arm64_pmcr_write(uint32_t reg)
{

 WRITE_SPECIALREG(pmcr_el0, reg);

 isb();
}
