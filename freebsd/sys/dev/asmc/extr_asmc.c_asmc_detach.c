
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asmc_softc {int sc_mtx; scalar_t__ sc_ioport; int sc_rid_port; scalar_t__ sc_irq; int sc_rid_irq; scalar_t__ sc_cookie; scalar_t__ sc_sms_tq; int sc_sms_task; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct asmc_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int taskqueue_drain (scalar_t__,int *) ;
 int taskqueue_free (scalar_t__) ;

__attribute__((used)) static int
asmc_detach(device_t dev)
{
 struct asmc_softc *sc = device_get_softc(dev);

 if (sc->sc_sms_tq) {
  taskqueue_drain(sc->sc_sms_tq, &sc->sc_sms_task);
  taskqueue_free(sc->sc_sms_tq);
 }
 if (sc->sc_cookie)
  bus_teardown_intr(dev, sc->sc_irq, sc->sc_cookie);
 if (sc->sc_irq)
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_rid_irq,
      sc->sc_irq);
 if (sc->sc_ioport)
  bus_release_resource(dev, SYS_RES_IOPORT, sc->sc_rid_port,
      sc->sc_ioport);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
