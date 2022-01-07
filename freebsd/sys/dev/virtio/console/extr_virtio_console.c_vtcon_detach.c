
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int vtcon_flags; int vtcon_ctrl_tx_mtx; int vtcon_mtx; int vtcon_ctrl_task; } ;
typedef int device_t ;


 int VTCON_FLAG_DETACHED ;
 int VTCON_FLAG_MULTIPORT ;
 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 struct vtcon_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int mtx_destroy (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_thread ;
 int vtcon_ctrl_deinit (struct vtcon_softc*) ;
 int vtcon_destroy_ports (struct vtcon_softc*) ;
 int vtcon_stop (struct vtcon_softc*) ;

__attribute__((used)) static int
vtcon_detach(device_t dev)
{
 struct vtcon_softc *sc;

 sc = device_get_softc(dev);

 VTCON_LOCK(sc);
 sc->vtcon_flags |= VTCON_FLAG_DETACHED;
 if (device_is_attached(dev))
  vtcon_stop(sc);
 VTCON_UNLOCK(sc);

 if (sc->vtcon_flags & VTCON_FLAG_MULTIPORT) {
  taskqueue_drain(taskqueue_thread, &sc->vtcon_ctrl_task);
  vtcon_ctrl_deinit(sc);
 }

 vtcon_destroy_ports(sc);
 mtx_destroy(&sc->vtcon_mtx);
 mtx_destroy(&sc->vtcon_ctrl_tx_mtx);

 return (0);
}
