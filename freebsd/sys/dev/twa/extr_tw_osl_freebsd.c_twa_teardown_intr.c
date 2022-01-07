
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int * intr_handle; scalar_t__ irq_res; int bus_dev; } ;


 int bus_teardown_intr (int ,scalar_t__,int *) ;

int twa_teardown_intr(struct twa_softc *sc)
{
 int error = 0;

 if ((sc->intr_handle) && (sc->irq_res)) {
  error = bus_teardown_intr(sc->bus_dev,
      sc->irq_res, sc->intr_handle);
  sc->intr_handle = ((void*)0);
 }
 return( error );
}
