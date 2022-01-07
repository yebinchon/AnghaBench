
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int intr_type; int irqs; int* irq_res_id; int tws_dev; void** irq_res; } ;


 int FAILURE ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SUCCESS ;
 int SYS_RES_IRQ ;


 int TWS_TRACE (struct tws_softc*,char*,int ,int) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int device_printf (int ,char*) ;
 int pci_alloc_msi (int ,int*) ;
 int tws_setup_intr (struct tws_softc*,int) ;

__attribute__((used)) static int
tws_setup_irq(struct tws_softc *sc)
{
    int messages;

    switch(sc->intr_type) {
        case 129 :
            sc->irqs = 1;
            sc->irq_res_id[0] = 0;
            sc->irq_res[0] = bus_alloc_resource_any(sc->tws_dev, SYS_RES_IRQ,
                            &sc->irq_res_id[0], RF_SHAREABLE | RF_ACTIVE);
            if ( ! sc->irq_res[0] )
                return(FAILURE);
            if ( tws_setup_intr(sc, sc->irqs) == FAILURE )
                return(FAILURE);
            device_printf(sc->tws_dev, "Using legacy INTx\n");
            break;
        case 128 :
            sc->irqs = 1;
            sc->irq_res_id[0] = 1;
            messages = 1;
            if (pci_alloc_msi(sc->tws_dev, &messages) != 0 ) {
                TWS_TRACE(sc, "pci alloc msi fail", 0, messages);
                return(FAILURE);
            }
            sc->irq_res[0] = bus_alloc_resource_any(sc->tws_dev, SYS_RES_IRQ,
                              &sc->irq_res_id[0], RF_SHAREABLE | RF_ACTIVE);

            if ( !sc->irq_res[0] )
                return(FAILURE);
            if ( tws_setup_intr(sc, sc->irqs) == FAILURE )
                return(FAILURE);
            device_printf(sc->tws_dev, "Using MSI\n");
            break;

    }

    return(SUCCESS);
}
