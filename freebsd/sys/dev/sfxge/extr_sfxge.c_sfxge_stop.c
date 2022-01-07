
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfxge_softc {scalar_t__ init_state; TYPE_1__* ifnet; int enp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int SFXGE_ADAPTER_LOCK_ASSERT_OWNED (struct sfxge_softc*) ;
 scalar_t__ SFXGE_REGISTERED ;
 scalar_t__ SFXGE_STARTED ;
 int efx_nic_fini (int ) ;
 int sfxge_ev_stop (struct sfxge_softc*) ;
 int sfxge_intr_stop (struct sfxge_softc*) ;
 int sfxge_port_stop (struct sfxge_softc*) ;
 int sfxge_rx_stop (struct sfxge_softc*) ;
 int sfxge_tx_stop (struct sfxge_softc*) ;

__attribute__((used)) static void
sfxge_stop(struct sfxge_softc *sc)
{
 SFXGE_ADAPTER_LOCK_ASSERT_OWNED(sc);

 if (sc->init_state != SFXGE_STARTED)
  return;

 sc->init_state = SFXGE_REGISTERED;


 sfxge_tx_stop(sc);


 sfxge_rx_stop(sc);


 sfxge_port_stop(sc);


 sfxge_ev_stop(sc);


 sfxge_intr_stop(sc);

 efx_nic_fini(sc->enp);

 sc->ifnet->if_drv_flags &= ~IFF_DRV_RUNNING;
}
