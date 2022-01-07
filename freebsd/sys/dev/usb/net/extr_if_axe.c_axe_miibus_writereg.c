
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axe_softc {int sc_mtx; } ;
typedef int device_t ;


 int AXE_CMD_MII_OPMODE_HW ;
 int AXE_CMD_MII_OPMODE_SW ;
 int AXE_CMD_MII_WRITE_REG ;
 int AXE_LOCK (struct axe_softc*) ;
 int AXE_UNLOCK (struct axe_softc*) ;
 int axe_cmd (struct axe_softc*,int ,int,int,int*) ;
 struct axe_softc* device_get_softc (int ) ;
 int htole32 (int) ;
 int mtx_owned (int *) ;

__attribute__((used)) static int
axe_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct axe_softc *sc = device_get_softc(dev);
 int locked;

 val = htole32(val);
 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  AXE_LOCK(sc);

 axe_cmd(sc, AXE_CMD_MII_OPMODE_SW, 0, 0, ((void*)0));
 axe_cmd(sc, AXE_CMD_MII_WRITE_REG, reg, phy, &val);
 axe_cmd(sc, AXE_CMD_MII_OPMODE_HW, 0, 0, ((void*)0));

 if (!locked)
  AXE_UNLOCK(sc);
 return (0);
}
