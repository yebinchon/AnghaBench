
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int lock; int * irq_handler; int irq_res; } ;
typedef int device_t ;


 int bus_teardown_intr (int ,int ,int *) ;
 struct pvscsi_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pvscsi_adapter_reset (struct pvscsi_softc*) ;
 int pvscsi_free_all (struct pvscsi_softc*) ;
 int pvscsi_intr_disable (struct pvscsi_softc*) ;

__attribute__((used)) static int
pvscsi_detach(device_t dev)
{
 struct pvscsi_softc *sc;

 sc = device_get_softc(dev);

 pvscsi_intr_disable(sc);
 pvscsi_adapter_reset(sc);

 if (sc->irq_handler != ((void*)0)) {
  bus_teardown_intr(dev, sc->irq_res, sc->irq_handler);
 }

 mtx_lock(&sc->lock);
 pvscsi_free_all(sc);
 mtx_unlock(&sc->lock);

 mtx_destroy(&sc->lock);

 return (0);
}
