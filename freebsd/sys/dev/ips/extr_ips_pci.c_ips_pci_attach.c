
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ich_arg; int ich_func; } ;
struct TYPE_5__ {TYPE_3__ ips_ich; int queue; int adapter_dmatag; int irqcookie; void* ips_adapter_intr; void* irqres; void* irqrid; int * iores; void* rid; int iotype; void* ips_poll_cmd; void* ips_issue_cmd; void* ips_adapter_reinit; int queue_mtx; int timer; int cmd_sema; int dev; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int DEVICE_PRINTF (int,int ,char*) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 scalar_t__ IPS_COPPERHEAD_DEVICE_ID ;
 scalar_t__ IPS_MARCO_DEVICE_ID ;
 int IPS_MAX_SG_ELEMENTS ;
 scalar_t__ IPS_MORPHEUS_DEVICE_ID ;
 int MTX_DEF ;
 void* PCIR_BAR (int) ;
 int PRINTF (int,char*) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bioq_init (int *) ;
 void* bus_alloc_resource_any (int ,int ,void**,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,void*,TYPE_1__*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 scalar_t__ config_intrhook_establish (TYPE_3__*) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 void* ips_copperhead_intr ;
 void* ips_copperhead_poll ;
 void* ips_copperhead_reinit ;
 int ips_intrhook ;
 void* ips_issue_copperhead_cmd ;
 void* ips_issue_morpheus_cmd ;
 void* ips_morpheus_intr ;
 void* ips_morpheus_poll ;
 void* ips_morpheus_reinit ;
 int ips_pci_free (TYPE_1__*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 int printf (char*) ;
 int sema_init (int *,int ,char*) ;

__attribute__((used)) static int ips_pci_attach(device_t dev)
{
        ips_softc_t *sc;

        DEVICE_PRINTF(1, dev, "in attach.\n");
        sc = (ips_softc_t *)device_get_softc(dev);
        sc->dev = dev;
 mtx_init(&sc->queue_mtx, "IPS bioqueue lock", ((void*)0), MTX_DEF);
 sema_init(&sc->cmd_sema, 0, "IPS Command Semaphore");
 callout_init_mtx(&sc->timer, &sc->queue_mtx, 0);

        if(pci_get_device(dev) == IPS_MORPHEUS_DEVICE_ID){
  sc->ips_adapter_reinit = ips_morpheus_reinit;
                sc->ips_adapter_intr = ips_morpheus_intr;
  sc->ips_issue_cmd = ips_issue_morpheus_cmd;
  sc->ips_poll_cmd = ips_morpheus_poll;
        } else if(pci_get_device(dev) == IPS_COPPERHEAD_DEVICE_ID){
  sc->ips_adapter_reinit = ips_copperhead_reinit;
                sc->ips_adapter_intr = ips_copperhead_intr;
  sc->ips_issue_cmd = ips_issue_copperhead_cmd;
  sc->ips_poll_cmd = ips_copperhead_poll;
 } else if (pci_get_device(dev) == IPS_MARCO_DEVICE_ID){
  sc->ips_adapter_reinit = ips_morpheus_reinit;
  sc->ips_adapter_intr = ips_morpheus_intr;
  sc->ips_issue_cmd = ips_issue_morpheus_cmd;
  sc->ips_poll_cmd = ips_morpheus_poll;
 } else
                goto error;

 pci_enable_busmaster(dev);

        sc->iores = ((void*)0);
 PRINTF(10, "trying MEMIO\n");
 if(pci_get_device(dev) == IPS_COPPERHEAD_DEVICE_ID)
  sc->rid = PCIR_BAR(1);
 else
  sc->rid = PCIR_BAR(0);
 sc->iotype = SYS_RES_MEMORY;
 sc->iores = bus_alloc_resource_any(dev, sc->iotype, &sc->rid,
     RF_ACTIVE);
        if(!sc->iores){
                PRINTF(10, "trying PORTIO\n");
                sc->rid = PCIR_BAR(0);
                sc->iotype = SYS_RES_IOPORT;
                sc->iores = bus_alloc_resource_any(dev, sc->iotype,
   &sc->rid, RF_ACTIVE);
        }
        if(sc->iores == ((void*)0)){
                device_printf(dev, "resource allocation failed\n");
                return (ENXIO);
        }

        sc->irqrid = 0;
        if(!(sc->irqres = bus_alloc_resource_any(dev, SYS_RES_IRQ,
  &sc->irqrid, RF_SHAREABLE | RF_ACTIVE))){
                device_printf(dev, "irq allocation failed\n");
                goto error;
        }
 if(bus_setup_intr(dev, sc->irqres, INTR_TYPE_BIO|INTR_MPSAFE, ((void*)0),
     sc->ips_adapter_intr, sc, &sc->irqcookie)){
                device_printf(dev, "irq setup failed\n");
                goto error;
        }
 if (bus_dma_tag_create( bus_get_dma_tag(dev),
                    1,
                    0,
                    BUS_SPACE_MAXADDR_32BIT,
                    BUS_SPACE_MAXADDR,
                    ((void*)0),
                    ((void*)0),
                    BUS_SPACE_MAXSIZE_32BIT,
                    IPS_MAX_SG_ELEMENTS,
                    BUS_SPACE_MAXSIZE_32BIT,
                    0,
                    ((void*)0),
                    ((void*)0),
    &sc->adapter_dmatag) != 0) {
                device_printf(dev, "can't alloc dma tag\n");
                goto error;
        }
 sc->ips_ich.ich_func = ips_intrhook;
 sc->ips_ich.ich_arg = sc;
 bioq_init(&sc->queue);
 if (config_intrhook_establish(&sc->ips_ich) != 0) {
  printf("IPS can't establish configuration hook\n");
  goto error;
 }
        return 0;
error:
 ips_pci_free(sc);
        return (ENXIO);
}
