
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axge_softc {int sc_mtx; } ;
typedef int device_t ;


 int AXGE_ACCESS_PHY ;
 int AXGE_LOCK (struct axge_softc*) ;
 int AXGE_UNLOCK (struct axge_softc*) ;
 int axge_write_cmd_2 (struct axge_softc*,int ,int,int,int) ;
 struct axge_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;

__attribute__((used)) static int
axge_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct axge_softc *sc;
 int locked;

 sc = device_get_softc(dev);
 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  AXGE_LOCK(sc);

 axge_write_cmd_2(sc, AXGE_ACCESS_PHY, reg, phy, val);

 if (!locked)
  AXGE_UNLOCK(sc);

 return (0);
}
