
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {scalar_t__ bge_asicrev; int bge_mi_mode; int bge_dev; int bge_phy_ape_lock; } ;
typedef int device_t ;


 scalar_t__ BGE_ASICREV_BCM5906 ;
 int BGE_MICMD_WRITE ;
 int BGE_MICOMM_BUSY ;
 int BGE_MIMODE_AUTOPOLL ;
 int BGE_MIPHY (int) ;
 int BGE_MIREG (int) ;
 int BGE_MI_COMM ;
 int BGE_MI_MODE ;
 int BGE_TIMEOUT ;
 int BRGPHY_MII_1000CTL ;
 int BRGPHY_MII_AUXCTL ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int DELAY (int) ;
 scalar_t__ bge_ape_lock (struct bge_softc*,int ) ;
 int bge_ape_unlock (struct bge_softc*,int ) ;
 struct bge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int) ;

__attribute__((used)) static int
bge_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct bge_softc *sc;
 int i;

 sc = device_get_softc(dev);

 if (sc->bge_asicrev == BGE_ASICREV_BCM5906 &&
     (reg == BRGPHY_MII_1000CTL || reg == BRGPHY_MII_AUXCTL))
  return (0);

 if (bge_ape_lock(sc, sc->bge_phy_ape_lock) != 0)
  return (0);


 if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {
  CSR_WRITE_4(sc, BGE_MI_MODE,
      sc->bge_mi_mode & ~BGE_MIMODE_AUTOPOLL);
  DELAY(80);
 }

 CSR_WRITE_4(sc, BGE_MI_COMM, BGE_MICMD_WRITE | BGE_MICOMM_BUSY |
     BGE_MIPHY(phy) | BGE_MIREG(reg) | val);

 for (i = 0; i < BGE_TIMEOUT; i++) {
  DELAY(10);
  if (!(CSR_READ_4(sc, BGE_MI_COMM) & BGE_MICOMM_BUSY)) {
   DELAY(5);
   CSR_READ_4(sc, BGE_MI_COMM);
   break;
  }
 }


 if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {
  CSR_WRITE_4(sc, BGE_MI_MODE, sc->bge_mi_mode);
  DELAY(80);
 }

 bge_ape_unlock(sc, sc->bge_phy_ape_lock);

 if (i == BGE_TIMEOUT)
  device_printf(sc->bge_dev,
      "PHY write timed out (phy %d, reg %d, val 0x%04x)\n",
      phy, reg, val);

 return (0);
}
