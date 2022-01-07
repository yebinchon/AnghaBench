
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfe_softc {int mii_phyaddr; } ;
typedef int device_t ;


 int DELAY (int) ;
 int DPRINTFN (struct nfe_softc*,int,char*,...) ;
 int NFE_PHYADD_SHIFT ;
 int NFE_PHY_BUSY ;
 int NFE_PHY_CTL ;
 int NFE_PHY_DATA ;
 int NFE_PHY_ERROR ;
 int NFE_PHY_STATUS ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int NFE_TIMEOUT ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 struct nfe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
nfe_miibus_readreg(device_t dev, int phy, int reg)
{
 struct nfe_softc *sc = device_get_softc(dev);
 uint32_t val;
 int ntries;

 NFE_WRITE(sc, NFE_PHY_STATUS, 0xf);

 if (NFE_READ(sc, NFE_PHY_CTL) & NFE_PHY_BUSY) {
  NFE_WRITE(sc, NFE_PHY_CTL, NFE_PHY_BUSY);
  DELAY(100);
 }

 NFE_WRITE(sc, NFE_PHY_CTL, (phy << NFE_PHYADD_SHIFT) | reg);

 for (ntries = 0; ntries < NFE_TIMEOUT; ntries++) {
  DELAY(100);
  if (!(NFE_READ(sc, NFE_PHY_CTL) & NFE_PHY_BUSY))
   break;
 }
 if (ntries == NFE_TIMEOUT) {
  DPRINTFN(sc, 2, "timeout waiting for PHY\n");
  return 0;
 }

 if (NFE_READ(sc, NFE_PHY_STATUS) & NFE_PHY_ERROR) {
  DPRINTFN(sc, 2, "could not read PHY\n");
  return 0;
 }

 val = NFE_READ(sc, NFE_PHY_DATA);
 if (val != 0xffffffff && val != 0)
  sc->mii_phyaddr = phy;

 DPRINTFN(sc, 2, "mii read phy %d reg 0x%x ret 0x%x\n", phy, reg, val);

 return (val);
}
