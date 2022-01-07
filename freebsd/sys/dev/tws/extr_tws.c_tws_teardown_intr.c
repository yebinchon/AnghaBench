
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int irqs; int ** intr_handle; int * irq_res; int tws_dev; } ;


 int SUCCESS ;
 int bus_teardown_intr (int ,int ,int *) ;

int
tws_teardown_intr(struct tws_softc *sc)
{
    int i, error;

    for(i=0;i<sc->irqs;i++) {
        if (sc->intr_handle[i]) {
            error = bus_teardown_intr(sc->tws_dev,
                                      sc->irq_res[i], sc->intr_handle[i]);
            sc->intr_handle[i] = ((void*)0);
        }
    }
    return(SUCCESS);
}
