
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_softc {int mtx; int dev; scalar_t__ ibase; struct i2o_registers* reg; void* r_mem; void* r_irq; } ;
struct i2o_registers {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_generic_attach (int ) ;
 struct iop_softc* device_get_softc (int ) ;
 int iop_init (struct iop_softc*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ rman_get_virtual (void*) ;

__attribute__((used)) static int
iop_pci_attach(device_t dev)
{
    struct iop_softc *sc = device_get_softc(dev);
    int rid;


    rid = PCIR_BAR(0);
    sc->r_mem =
 bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

    if (!sc->r_mem)
 return ENXIO;

    rid = 0x00;
    sc->r_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
           RF_SHAREABLE | RF_ACTIVE);


    pci_enable_busmaster(dev);

    sc->ibase = rman_get_virtual(sc->r_mem);
    sc->reg = (struct i2o_registers *)sc->ibase;
    sc->dev = dev;
    mtx_init(&sc->mtx, "pst lock", ((void*)0), MTX_DEF);

    if (!iop_init(sc))
 return 0;
    return bus_generic_attach(dev);
}
