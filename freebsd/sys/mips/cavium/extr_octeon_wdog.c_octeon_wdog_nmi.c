
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_get_core_num () ;
 int mips_rd_cause () ;
 scalar_t__ mips_rd_excpc () ;
 int mips_rd_status () ;
 int printf (char*,int,...) ;

void
octeon_wdog_nmi(void)
{
 int core;

 core = cvmx_get_core_num();

 printf("cpu%u: NMI detected\n", core);
 printf("cpu%u: Exception PC: %p\n", core, (void *)mips_rd_excpc());
 printf("cpu%u: status %#x cause %#x\n", core, mips_rd_status(), mips_rd_cause());







 for (;;)
  continue;
}
