
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int C_SW1 ;
 int mips_rd_cause () ;
 int mips_wr_cause (int ) ;

void
platform_ipi_clear(void)
{
 uint32_t reg;

 reg = mips_rd_cause();
 reg &= ~(C_SW1);
 mips_wr_cause(reg);
}
