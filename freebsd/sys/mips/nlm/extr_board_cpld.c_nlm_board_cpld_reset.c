
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CPLD_RESET ;
 int nlm_cpld_write (int ,int ,int) ;

void
nlm_board_cpld_reset(uint64_t base)
{

 nlm_cpld_write(base, CPLD_RESET, 1 << 15);
 for(;;)
  __asm __volatile("wait");
}
