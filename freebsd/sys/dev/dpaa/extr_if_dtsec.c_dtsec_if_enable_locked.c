
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dtsec_softc {int sc_dev; TYPE_1__* sc_ifnet; int sc_txph; int sc_rxph; int sc_mach; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int DTSEC_LOCK_ASSERT (struct dtsec_softc*) ;
 int EIO ;
 int E_OK ;
 int FM_MAC_Enable (int ,int ) ;
 int FM_PORT_Enable (int ) ;
 int IFF_DRV_RUNNING ;
 int dtsec_miibus_statchg (int ) ;
 int e_COMM_MODE_RX_AND_TX ;

__attribute__((used)) static int
dtsec_if_enable_locked(struct dtsec_softc *sc)
{
 int error;

 DTSEC_LOCK_ASSERT(sc);

 error = FM_MAC_Enable(sc->sc_mach, e_COMM_MODE_RX_AND_TX);
 if (error != E_OK)
  return (EIO);

 error = FM_PORT_Enable(sc->sc_rxph);
 if (error != E_OK)
  return (EIO);

 error = FM_PORT_Enable(sc->sc_txph);
 if (error != E_OK)
  return (EIO);

 sc->sc_ifnet->if_drv_flags |= IFF_DRV_RUNNING;


 dtsec_miibus_statchg(sc->sc_dev);

 return (0);
}
