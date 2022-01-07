
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_EnetAddr ;
struct dtsec_softc {int sc_dev; TYPE_1__* sc_ifnet; int sc_tick_callout; scalar_t__ sc_mii; int sc_mach; } ;
struct TYPE_2__ {int if_flags; } ;


 int DTSEC_LOCK_ASSERT (struct dtsec_softc*) ;
 int E_OK ;
 int FM_MAC_ModifyMacAddr (int ,int *) ;
 int IFF_UP ;
 scalar_t__ IF_LLADDR (TYPE_1__*) ;
 int callout_reset (int *,int ,int ,struct dtsec_softc*) ;
 int device_printf (int ,char*) ;
 int dtsec_if_deinit_locked (struct dtsec_softc*) ;
 int dtsec_if_disable_locked (struct dtsec_softc*) ;
 int dtsec_if_enable_locked (struct dtsec_softc*) ;
 int dtsec_if_tick ;
 int hz ;

__attribute__((used)) static void
dtsec_if_init_locked(struct dtsec_softc *sc)
{
 int error;

 DTSEC_LOCK_ASSERT(sc);


 error = FM_MAC_ModifyMacAddr(sc->sc_mach,
     (t_EnetAddr *)IF_LLADDR(sc->sc_ifnet));
 if (error != E_OK) {
  device_printf(sc->sc_dev, "couldn't set MAC address.\n");
  goto err;
 }


 if (sc->sc_mii)
  callout_reset(&sc->sc_tick_callout, hz, dtsec_if_tick, sc);

 if (sc->sc_ifnet->if_flags & IFF_UP) {
  error = dtsec_if_enable_locked(sc);
  if (error != 0)
   goto err;
 } else {
  error = dtsec_if_disable_locked(sc);
  if (error != 0)
   goto err;
 }

 return;

err:
 dtsec_if_deinit_locked(sc);
 device_printf(sc->sc_dev, "initialization error.\n");
 return;
}
