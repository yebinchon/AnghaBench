
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int * intr_handle; int * irq_res; int tws_dev; } ;


 int FAILURE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int SETUP_INTR_RES ;
 int SUCCESS ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct tws_softc*,int *) ;
 int tws_intr ;
 int tws_log (struct tws_softc*,int ) ;

int
tws_setup_intr(struct tws_softc *sc, int irqs)
{
    int i, error;

    for(i=0;i<irqs;i++) {
        if (!(sc->intr_handle[i])) {
            if ((error = bus_setup_intr(sc->tws_dev, sc->irq_res[i],
                                    INTR_TYPE_CAM | INTR_MPSAFE,
                                    ((void*)0),
                                    tws_intr, sc, &sc->intr_handle[i]))) {
                tws_log(sc, SETUP_INTR_RES);
                return(FAILURE);
            }
        }
    }
    return(SUCCESS);

}
