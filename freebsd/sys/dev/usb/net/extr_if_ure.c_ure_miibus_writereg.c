
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ure_softc {int sc_phyno; int sc_mtx; } ;
typedef int device_t ;


 int URE_LOCK (struct ure_softc*) ;
 scalar_t__ URE_OCP_BASE_MII ;
 int URE_UNLOCK (struct ure_softc*) ;
 struct ure_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;
 int ure_ocp_reg_write (struct ure_softc*,scalar_t__,int) ;

__attribute__((used)) static int
ure_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct ure_softc *sc;
 int locked;

 sc = device_get_softc(dev);
 if (sc->sc_phyno != phy)
  return (0);

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  URE_LOCK(sc);

 ure_ocp_reg_write(sc, URE_OCP_BASE_MII + reg * 2, val);

 if (!locked)
  URE_UNLOCK(sc);
 return (0);
}
