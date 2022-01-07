
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int arswitch_reg_read32 (int ,int,int) ;
 int arswitch_split_setpage (int ,int,int*,int*) ;

int
arswitch_readreg(device_t dev, int addr)
{
 uint16_t phy, reg;

 arswitch_split_setpage(dev, addr, &phy, &reg);
 return arswitch_reg_read32(dev, 0x10 | phy, reg);
}
