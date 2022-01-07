
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ure_softc {int sc_mtx; } ;
typedef int device_t ;


 int URE_GMEDIASTAT ;
 int URE_LOCK (struct ure_softc*) ;
 int URE_MCU_TYPE_PLA ;
 scalar_t__ URE_OCP_BASE_MII ;
 int URE_UNLOCK (struct ure_softc*) ;
 struct ure_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;
 int ure_ocp_reg_read (struct ure_softc*,scalar_t__) ;
 int ure_read_1 (struct ure_softc*,int,int ) ;

__attribute__((used)) static int
ure_miibus_readreg(device_t dev, int phy, int reg)
{
 struct ure_softc *sc;
 uint16_t val;
 int locked;

 sc = device_get_softc(dev);
 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  URE_LOCK(sc);


 if (reg == URE_GMEDIASTAT) {
  if (!locked)
   URE_UNLOCK(sc);
  return (ure_read_1(sc, URE_GMEDIASTAT, URE_MCU_TYPE_PLA));
 }

 val = ure_ocp_reg_read(sc, URE_OCP_BASE_MII + reg * 2);

 if (!locked)
  URE_UNLOCK(sc);
 return (val);
}
