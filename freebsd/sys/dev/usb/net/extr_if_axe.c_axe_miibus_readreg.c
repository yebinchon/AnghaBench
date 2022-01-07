
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct axe_softc {int sc_mtx; } ;
typedef int device_t ;


 int AXE_CMD_MII_OPMODE_HW ;
 int AXE_CMD_MII_OPMODE_SW ;
 int AXE_CMD_MII_READ_REG ;
 scalar_t__ AXE_IS_772 (struct axe_softc*) ;
 int AXE_LOCK (struct axe_softc*) ;
 int AXE_UNLOCK (struct axe_softc*) ;
 int BMSR_EXTCAP ;
 int MII_BMSR ;
 int axe_cmd (struct axe_softc*,int ,int,int,int*) ;
 struct axe_softc* device_get_softc (int ) ;
 int le16toh (int) ;
 int mtx_owned (int *) ;

__attribute__((used)) static int
axe_miibus_readreg(device_t dev, int phy, int reg)
{
 struct axe_softc *sc = device_get_softc(dev);
 uint16_t val;
 int locked;

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  AXE_LOCK(sc);

 axe_cmd(sc, AXE_CMD_MII_OPMODE_SW, 0, 0, ((void*)0));
 axe_cmd(sc, AXE_CMD_MII_READ_REG, reg, phy, &val);
 axe_cmd(sc, AXE_CMD_MII_OPMODE_HW, 0, 0, ((void*)0));

 val = le16toh(val);
 if (AXE_IS_772(sc) && reg == MII_BMSR) {






  val &= ~BMSR_EXTCAP;
 }

 if (!locked)
  AXE_UNLOCK(sc);
 return (val);
}
