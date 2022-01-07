
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR5312_MEM_CFG1_BANK0 ;
 int AR5312_MEM_CFG1_BANK1 ;
 scalar_t__ AR5312_SDRAMCTL_BASE ;
 scalar_t__ AR5312_SDRAMCTL_MEM_CFG1 ;
 int ATH_READ_REG (scalar_t__) ;
 int __SHIFTOUT (int,int ) ;
 int realmem ;

__attribute__((used)) static void
ar5312_chip_detect_mem_size(void)
{
 uint32_t memsize;
 uint32_t memcfg, bank0, bank1;







 memcfg = ATH_READ_REG(AR5312_SDRAMCTL_BASE + AR5312_SDRAMCTL_MEM_CFG1);
 bank0 = __SHIFTOUT(memcfg, AR5312_MEM_CFG1_BANK0);
 bank1 = __SHIFTOUT(memcfg, AR5312_MEM_CFG1_BANK1);

 memsize = (bank0 ? (1 << (bank0 + 1)) : 0) +
     (bank1 ? (1 << (bank1 + 1)) : 0);
 memsize <<= 20;

 realmem = memsize;
}
