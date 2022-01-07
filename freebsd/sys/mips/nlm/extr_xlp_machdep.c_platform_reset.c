
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int SYS_CHIP_RESET ;
 int nlm_get_sys_regbase (int ) ;
 int nlm_write_sys_reg (int ,int ,int) ;

void
platform_reset(void)
{
 uint64_t sysbase = nlm_get_sys_regbase(0);

 nlm_write_sys_reg(sysbase, SYS_CHIP_RESET, 1);
 for( ; ; )
  __asm __volatile("wait");
}
