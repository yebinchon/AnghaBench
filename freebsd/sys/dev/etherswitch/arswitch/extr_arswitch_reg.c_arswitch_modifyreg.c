
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct arswitch_softc {int dummy; } ;
typedef int device_t ;


 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int MA_OWNED ;
 int arswitch_reg_read32 (int ,int,int) ;
 int arswitch_reg_write32 (int ,int,int,int) ;
 int arswitch_split_setpage (int ,int,int*,int*) ;
 scalar_t__ device_get_softc (int ) ;

int
arswitch_modifyreg(device_t dev, int addr, int mask, int set)
{
 int value;
 uint16_t phy, reg;

 ARSWITCH_LOCK_ASSERT((struct arswitch_softc *)device_get_softc(dev),
     MA_OWNED);

 arswitch_split_setpage(dev, addr, &phy, &reg);

 value = arswitch_reg_read32(dev, 0x10 | phy, reg);
 value &= ~mask;
 value |= set;
 return (arswitch_reg_write32(dev, 0x10 | phy, reg, value));
}
