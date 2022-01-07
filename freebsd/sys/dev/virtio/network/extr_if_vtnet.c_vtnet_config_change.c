
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {scalar_t__ vtnet_link_active; } ;
typedef int device_t ;


 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 struct vtnet_softc* device_get_softc (int ) ;
 int vtnet_tx_start_all (struct vtnet_softc*) ;
 int vtnet_update_link_status (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_config_change(device_t dev)
{
 struct vtnet_softc *sc;

 sc = device_get_softc(dev);

 VTNET_CORE_LOCK(sc);
 vtnet_update_link_status(sc);
 if (sc->vtnet_link_active != 0)
  vtnet_tx_start_all(sc);
 VTNET_CORE_UNLOCK(sc);

 return (0);
}
