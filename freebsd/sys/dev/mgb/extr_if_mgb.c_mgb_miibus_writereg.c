
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;
typedef int device_t ;


 int CSR_WRITE_REG (struct mgb_softc*,int ,int) ;
 int EIO ;
 int MGB_MII_ACCESS ;
 int MGB_MII_BUSY ;
 int MGB_MII_DATA ;
 int MGB_MII_PHY_ADDR_MASK ;
 int MGB_MII_PHY_ADDR_SHIFT ;
 int MGB_MII_REG_ADDR_MASK ;
 int MGB_MII_REG_ADDR_SHIFT ;
 int MGB_MII_WRITE ;
 scalar_t__ MGB_STS_TIMEOUT ;
 int device_get_softc (int ) ;
 struct mgb_softc* iflib_get_softc (int ) ;
 scalar_t__ mgb_wait_for_bits (struct mgb_softc*,int ,int ,int) ;

__attribute__((used)) static int
mgb_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct mgb_softc *sc;
 int mii_access;

 sc = iflib_get_softc(device_get_softc(dev));

 if (mgb_wait_for_bits(sc, MGB_MII_ACCESS,
     0, MGB_MII_BUSY) == MGB_STS_TIMEOUT)
  return EIO;
 mii_access = (phy & MGB_MII_PHY_ADDR_MASK) << MGB_MII_PHY_ADDR_SHIFT;
 mii_access |= (reg & MGB_MII_REG_ADDR_MASK) << MGB_MII_REG_ADDR_SHIFT;
 mii_access |= MGB_MII_BUSY | MGB_MII_WRITE;
 CSR_WRITE_REG(sc, MGB_MII_DATA, data);
 CSR_WRITE_REG(sc, MGB_MII_ACCESS, mii_access);
 if (mgb_wait_for_bits(sc, MGB_MII_ACCESS, 0, MGB_MII_BUSY) ==
     MGB_STS_TIMEOUT)
  return EIO;
 return 0;
}
