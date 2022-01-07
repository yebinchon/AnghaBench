
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR5315_MEM_CFG_COL_WIDTH ;
 int AR5315_MEM_CFG_DATA_WIDTH ;
 int AR5315_MEM_CFG_ROW_WIDTH ;
 scalar_t__ AR5315_SDRAMCTL_BASE ;
 scalar_t__ AR5315_SDRAMCTL_MEM_CFG ;
 int ATH_READ_REG (scalar_t__) ;
 int __SHIFTOUT (int,int ) ;
 int printf (char*,int,int,int,int,int) ;
 int realmem ;

__attribute__((used)) static void
ar5315_chip_detect_mem_size(void)
{
 uint32_t memsize = 0;
 uint32_t memcfg, cw, rw, dw;




 memcfg = ATH_READ_REG(AR5315_SDRAMCTL_BASE + AR5315_SDRAMCTL_MEM_CFG);
 cw = __SHIFTOUT(memcfg, AR5315_MEM_CFG_COL_WIDTH);
 cw += 1;
 rw = __SHIFTOUT(memcfg, AR5315_MEM_CFG_ROW_WIDTH);
 rw += 1;


 dw = __SHIFTOUT(memcfg, AR5315_MEM_CFG_DATA_WIDTH);
 dw += 1;
 dw *= 8;


 memsize = (1 << cw) * (1 << rw) * dw;




 realmem = memsize;
}
