
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mge_softc {int phy_sc; } ;
typedef int device_t ;


 int DELAY (int ) ;
 int MGE_READ (int ,int ) ;
 int MGE_REG_SMI ;
 int MGE_SMI_BUSY ;
 int MGE_SMI_DATA_MASK ;
 int MGE_SMI_LOCK () ;
 int MGE_SMI_MASK ;
 int MGE_SMI_UNLOCK () ;
 int MGE_SMI_WRITE ;
 int MGE_SMI_WRITE_DELAY ;
 scalar_t__ MGE_SMI_WRITE_RETRIES ;
 int MGE_WRITE (int ,int ,int) ;
 struct mge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
mv_write_ext_phy(device_t dev, int phy, int reg, int value)
{
 uint32_t retries;
 struct mge_softc *sc;

 sc = device_get_softc(dev);

 MGE_SMI_LOCK();
 MGE_WRITE(sc->phy_sc, MGE_REG_SMI, MGE_SMI_MASK &
     (MGE_SMI_WRITE | (reg << 21) | (phy << 16) |
     (value & MGE_SMI_DATA_MASK)));

 retries = MGE_SMI_WRITE_RETRIES;
 while (--retries && MGE_READ(sc->phy_sc, MGE_REG_SMI) & MGE_SMI_BUSY)
  DELAY(MGE_SMI_WRITE_DELAY);

 if (retries == 0)
  device_printf(dev, "Timeout while writing to PHY\n");
 MGE_SMI_UNLOCK();
}
