
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ue_dev; } ;
struct aue_softc {TYPE_1__ sc_ue; int sc_mtx; } ;
typedef int device_t ;


 int AUE_LOCK (struct aue_softc*) ;
 int AUE_PHYCTL_DONE ;
 int AUE_PHYCTL_WRITE ;
 int AUE_PHY_ADDR ;
 int AUE_PHY_CTL ;
 int AUE_PHY_DATA ;
 int AUE_TIMEOUT ;
 int AUE_UNLOCK (struct aue_softc*) ;
 int aue_csr_read_1 (struct aue_softc*,int ) ;
 int aue_csr_write_1 (struct aue_softc*,int ,int) ;
 int aue_csr_write_2 (struct aue_softc*,int ,int) ;
 struct aue_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mtx_owned (int *) ;
 scalar_t__ uether_pause (TYPE_1__*,int) ;

__attribute__((used)) static int
aue_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct aue_softc *sc = device_get_softc(dev);
 int i;
 int locked;

 if (phy == 3)
  return (0);

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  AUE_LOCK(sc);

 aue_csr_write_2(sc, AUE_PHY_DATA, data);
 aue_csr_write_1(sc, AUE_PHY_ADDR, phy);
 aue_csr_write_1(sc, AUE_PHY_CTL, reg | AUE_PHYCTL_WRITE);

 for (i = 0; i != AUE_TIMEOUT; i++) {
  if (aue_csr_read_1(sc, AUE_PHY_CTL) & AUE_PHYCTL_DONE)
   break;
  if (uether_pause(&sc->sc_ue, hz / 100))
   break;
 }

 if (i == AUE_TIMEOUT)
  device_printf(sc->sc_ue.ue_dev, "MII write timed out\n");

 if (!locked)
  AUE_UNLOCK(sc);
 return (0);
}
