
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {scalar_t__ sis_type; scalar_t__ sis_rev; int sis_dev; } ;
typedef int device_t ;


 int CSR_READ_4 (struct sis_softc*,scalar_t__) ;
 int CSR_WRITE_4 (struct sis_softc*,scalar_t__,int) ;
 int DELAY (int) ;
 scalar_t__ NS_BMCR ;
 scalar_t__ NS_BMSR ;
 scalar_t__ SIS_PHYCTL ;
 int SIS_PHYCTL_ACCESS ;
 int SIS_PHYOP_READ ;
 scalar_t__ SIS_REV_635 ;
 int SIS_SETBIT (struct sis_softc*,scalar_t__,int) ;
 int SIS_TIMEOUT ;
 scalar_t__ SIS_TYPE_83815 ;
 scalar_t__ SIS_TYPE_900 ;
 struct sis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mii_bitbang_readreg (int ,int *,int,int) ;
 int sis_mii_bitbang_ops ;

__attribute__((used)) static int
sis_miibus_readreg(device_t dev, int phy, int reg)
{
 struct sis_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sis_type == SIS_TYPE_83815) {
  if (phy != 0)
   return (0);
  if (!CSR_READ_4(sc, NS_BMSR))
   DELAY(1000);
  return CSR_READ_4(sc, NS_BMCR + (reg * 4));
 }






 if (sc->sis_type == SIS_TYPE_900 &&
     sc->sis_rev < SIS_REV_635) {
  int i, val = 0;

  if (phy != 0)
   return (0);

  CSR_WRITE_4(sc, SIS_PHYCTL,
      (phy << 11) | (reg << 6) | SIS_PHYOP_READ);
  SIS_SETBIT(sc, SIS_PHYCTL, SIS_PHYCTL_ACCESS);

  for (i = 0; i < SIS_TIMEOUT; i++) {
   if (!(CSR_READ_4(sc, SIS_PHYCTL) & SIS_PHYCTL_ACCESS))
    break;
  }

  if (i == SIS_TIMEOUT) {
   device_printf(sc->sis_dev,
       "PHY failed to come ready\n");
   return (0);
  }

  val = (CSR_READ_4(sc, SIS_PHYCTL) >> 16) & 0xFFFF;

  if (val == 0xFFFF)
   return (0);

  return (val);
 } else
  return (mii_bitbang_readreg(dev, &sis_mii_bitbang_ops, phy,
      reg));
}
