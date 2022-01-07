
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int device_t ;
struct TYPE_5__ {int ich_cmd; int * irq_res; scalar_t__ irq_rid; int * io_res; int io_rid; int dev; } ;


 int ENXIO ;
 int ICH_HOSTC ;
 int ICH_HOSTC_HST_EN ;
 int ICH_SMB_BASE ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 void* bus_alloc_resource_anywhere (int ,int ,int *,int,int) ;
 int bzero (TYPE_1__* const,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ichsmb_attach (int ) ;
 int ichsmb_release_resources (TYPE_1__* const) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
ichsmb_pci_attach(device_t dev)
{
 const sc_p sc = device_get_softc(dev);
 int error;


 bzero(sc, sizeof(*sc));
 sc->ich_cmd = -1;
 sc->dev = dev;


 sc->io_rid = ICH_SMB_BASE;
 sc->io_res = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
     &sc->io_rid, 16, RF_ACTIVE);
 if (sc->io_res == ((void*)0))
  sc->io_res = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
      &sc->io_rid, 32, RF_ACTIVE);
 if (sc->io_res == ((void*)0)) {
  device_printf(dev, "can't map I/O\n");
  error = ENXIO;
  goto fail;
 }


 sc->irq_rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->irq_rid, RF_ACTIVE | RF_SHAREABLE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "can't get IRQ\n");
  error = ENXIO;
  goto fail;
 }


 pci_write_config(dev, ICH_HOSTC, ICH_HOSTC_HST_EN, 1);


 error = ichsmb_attach(dev);
 if (error)
  goto fail;
 return (0);

fail:

 ichsmb_release_resources(sc);
 return (error);
}
