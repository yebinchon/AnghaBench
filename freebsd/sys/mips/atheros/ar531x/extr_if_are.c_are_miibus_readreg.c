
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct are_softc {int dummy; } ;
typedef int device_t ;


 int CSR_MIIADDR ;
 int CSR_MIIDATA ;
 int CSR_READ_4 (struct are_softc*,int ) ;
 int CSR_WRITE_4 (struct are_softc*,int ,int) ;
 int MIIADDR_BUSY ;
 int MIIADDR_PHY_SHIFT ;
 int MIIADDR_REG_SHIFT ;
 struct are_softc* device_get_softc (int ) ;

__attribute__((used)) static int
are_miibus_readreg(device_t dev, int phy, int reg)
{
 struct are_softc * sc = device_get_softc(dev);
 uint32_t addr;
 int i;

 addr = (phy << MIIADDR_PHY_SHIFT) | (reg << MIIADDR_REG_SHIFT);
 CSR_WRITE_4(sc, CSR_MIIADDR, addr);
 for (i = 0; i < 100000000; i++) {
  if ((CSR_READ_4(sc, CSR_MIIADDR) & MIIADDR_BUSY) == 0)
   break;
 }

 return (CSR_READ_4(sc, CSR_MIIDATA) & 0xffff);
}
