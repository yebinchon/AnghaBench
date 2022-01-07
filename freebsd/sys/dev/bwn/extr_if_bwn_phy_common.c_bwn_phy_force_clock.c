
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bwn_softc {int sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 scalar_t__ BHND_IOCTL_CLK_FORCE ;
 int bhnd_write_ioctl (int ,scalar_t__,scalar_t__) ;
 int device_printf (int ,char*,int) ;

int
bwn_phy_force_clock(struct bwn_mac *mac, int force)
{
 struct bwn_softc *sc;
 uint32_t val, mask;
 int error;

 sc = mac->mac_sc;


 mask = BHND_IOCTL_CLK_FORCE;
 if (force) {
  val = BHND_IOCTL_CLK_FORCE;
 } else {
  val = 0;
 }

 if ((error = bhnd_write_ioctl(sc->sc_dev, val, mask))) {
  device_printf(sc->sc_dev, "failed to set CLK_FORCE ioctl flag: "
      "%d\n", error);
  return (error);
 }

 return (0);
}
