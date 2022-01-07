
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int bge_mi_mode; int bge_phy_ape_lock; int bge_dev; } ;
typedef int device_t ;


 int BGE_MICMD_READ ;
 int BGE_MICOMM_BUSY ;
 int BGE_MICOMM_READFAIL ;
 int BGE_MIMODE_AUTOPOLL ;
 int BGE_MIPHY (int) ;
 int BGE_MIREG (int) ;
 int BGE_MI_COMM ;
 int BGE_MI_MODE ;
 int BGE_TIMEOUT ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int DELAY (int) ;
 scalar_t__ bge_ape_lock (struct bge_softc*,int ) ;
 int bge_ape_unlock (struct bge_softc*,int ) ;
 struct bge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int) ;

__attribute__((used)) static int
bge_miibus_readreg(device_t dev, int phy, int reg)
{
 struct bge_softc *sc;
 uint32_t val;
 int i;

 sc = device_get_softc(dev);

 if (bge_ape_lock(sc, sc->bge_phy_ape_lock) != 0)
  return (0);


 if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {
  CSR_WRITE_4(sc, BGE_MI_MODE,
      sc->bge_mi_mode & ~BGE_MIMODE_AUTOPOLL);
  DELAY(80);
 }

 CSR_WRITE_4(sc, BGE_MI_COMM, BGE_MICMD_READ | BGE_MICOMM_BUSY |
     BGE_MIPHY(phy) | BGE_MIREG(reg));


 for (i = 0; i < BGE_TIMEOUT; i++) {
  DELAY(10);
  val = CSR_READ_4(sc, BGE_MI_COMM);
  if ((val & BGE_MICOMM_BUSY) == 0) {
   DELAY(5);
   val = CSR_READ_4(sc, BGE_MI_COMM);
   break;
  }
 }

 if (i == BGE_TIMEOUT) {
  device_printf(sc->bge_dev,
      "PHY read timed out (phy %d, reg %d, val 0x%08x)\n",
      phy, reg, val);
  val = 0;
 }


 if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {
  CSR_WRITE_4(sc, BGE_MI_MODE, sc->bge_mi_mode);
  DELAY(80);
 }

 bge_ape_unlock(sc, sc->bge_phy_ape_lock);

 if (val & BGE_MICOMM_READFAIL)
  return (0);

 return (val & 0xFFFF);
}
