
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct arswitch_softc {int dummy; } ;
typedef int device_t ;


 int arswitch_reg_write32 (int ,int,int,int) ;
 int arswitch_split_setpage (int ,int,int*,int*) ;
 struct arswitch_softc* device_get_softc (int ) ;

int
arswitch_writereg(device_t dev, int addr, int value)
{
 struct arswitch_softc *sc;
 uint16_t phy, reg;

 sc = device_get_softc(dev);

 arswitch_split_setpage(dev, addr, &phy, &reg);
 return (arswitch_reg_write32(dev, 0x10 | phy, reg, value));
}
