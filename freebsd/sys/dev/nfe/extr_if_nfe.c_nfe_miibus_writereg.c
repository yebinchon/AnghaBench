
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfe_softc {int nfe_dev; } ;
typedef int device_t ;


 int DELAY (int) ;
 int NFE_PHYADD_SHIFT ;
 int NFE_PHY_BUSY ;
 int NFE_PHY_CTL ;
 int NFE_PHY_DATA ;
 int NFE_PHY_STATUS ;
 int NFE_PHY_WRITE ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int NFE_TIMEOUT ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 struct nfe_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int nfedebug ;

__attribute__((used)) static int
nfe_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct nfe_softc *sc = device_get_softc(dev);
 uint32_t ctl;
 int ntries;

 NFE_WRITE(sc, NFE_PHY_STATUS, 0xf);

 if (NFE_READ(sc, NFE_PHY_CTL) & NFE_PHY_BUSY) {
  NFE_WRITE(sc, NFE_PHY_CTL, NFE_PHY_BUSY);
  DELAY(100);
 }

 NFE_WRITE(sc, NFE_PHY_DATA, val);
 ctl = NFE_PHY_WRITE | (phy << NFE_PHYADD_SHIFT) | reg;
 NFE_WRITE(sc, NFE_PHY_CTL, ctl);

 for (ntries = 0; ntries < NFE_TIMEOUT; ntries++) {
  DELAY(100);
  if (!(NFE_READ(sc, NFE_PHY_CTL) & NFE_PHY_BUSY))
   break;
 }




 return (0);
}
