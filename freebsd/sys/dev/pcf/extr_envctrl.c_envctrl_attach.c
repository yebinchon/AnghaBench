
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {scalar_t__ res_ioport; int pcf_flags; scalar_t__ res_irq; int pcf_lock; int rid_ioport; int rid_irq; int * iicbus; int intr_cookie; } ;
typedef int device_t ;


 struct pcf_softc* DEVTOSOFTC (int ) ;
 int ENXIO ;
 int IIC_FASTEST ;
 int IIC_POLLED ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int PCF_DEFAULT_ADDR ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_setup_intr (int ,scalar_t__,int,int *,int ,struct pcf_softc*,int *) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_flags (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int pcf_intr ;
 int pcf_rst_card (int ,int ,int ,int *) ;

__attribute__((used)) static int
envctrl_attach(device_t dev)
{
 struct pcf_softc *sc;
 int rv = ENXIO;

 sc = DEVTOSOFTC(dev);
 mtx_init(&sc->pcf_lock, device_get_nameunit(dev), "pcf", MTX_DEF);


 sc->res_ioport = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
      &sc->rid_ioport, RF_ACTIVE);
 if (sc->res_ioport == 0) {
  device_printf(dev, "cannot reserve I/O port range\n");
  goto error;
 }

 sc->pcf_flags = device_get_flags(dev);

 if (!(sc->pcf_flags & IIC_POLLED)) {
  sc->res_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->rid_irq,
           RF_ACTIVE);
  if (sc->res_irq == 0) {
   device_printf(dev, "can't reserve irq, polled mode.\n");
   sc->pcf_flags |= IIC_POLLED;
  }
 }


 pcf_rst_card(dev, IIC_FASTEST, PCF_DEFAULT_ADDR, ((void*)0));

 rv = bus_setup_intr(dev, sc->res_irq,
       INTR_TYPE_NET | INTR_MPSAFE ,
       ((void*)0), pcf_intr, sc, &sc->intr_cookie);
 if (rv) {
  device_printf(dev, "could not setup IRQ\n");
  goto error;
 }

 if ((sc->iicbus = device_add_child(dev, "iicbus", -1)) == ((void*)0))
  device_printf(dev, "could not allocate iicbus instance\n");


 bus_generic_attach(dev);

 return (0);

error:
 if (sc->res_irq != 0) {
  bus_release_resource(dev, SYS_RES_IRQ, sc->rid_irq,
         sc->res_irq);
 }
 if (sc->res_ioport != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, sc->rid_ioport,
         sc->res_ioport);
 }
 mtx_destroy(&sc->pcf_lock);
 return (rv);
}
