
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR10_REG ;
 int NR11_REG ;
 int NR12_REG ;
 int NR14_REG ;
 int NR21_REG ;
 int NR22_REG ;
 int NR24_REG ;
 int NR50_REG ;
 int NR51_REG ;
 int NR52_REG ;

void init_dial()
{

 NR52_REG = 0x83U;
 NR51_REG = 0x00U;
 NR50_REG = 0x77U;

 NR24_REG = 0x87U;
 NR22_REG = 0xffU;
 NR21_REG = 0xbfU;

 NR14_REG = 0x87U;
 NR12_REG = 0xffU;
 NR11_REG = 0xbfU;
 NR10_REG = 0x04U;
}
