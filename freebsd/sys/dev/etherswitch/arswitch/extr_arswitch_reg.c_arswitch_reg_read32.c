
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int MDIO_READREG (int ,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static uint32_t
arswitch_reg_read32(device_t dev, int phy, int reg)
{
 uint16_t lo, hi;
 lo = MDIO_READREG(device_get_parent(dev), phy, reg);
 hi = MDIO_READREG(device_get_parent(dev), phy, reg + 1);

 return (hi << 16) | lo;
}
