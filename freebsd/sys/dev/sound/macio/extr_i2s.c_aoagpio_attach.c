
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct aoagpio_softc {int ctrl; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int ENXIO ;
 int GPIO_CTRL_EXTINT_SET ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int aoagpio_int ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,struct resource*,int,int *,int ,int ,void**) ;
 struct aoagpio_softc* device_get_softc (int ) ;
 scalar_t__ powerpc_config_intr (int,int ,int ) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
aoagpio_attach(device_t gpio)
{
 struct aoagpio_softc *sc;
 struct resource *r;
 void *cookie;
 int irq, rid = 0;

 sc = device_get_softc(gpio);

 if ((1 << sc->ctrl) & GPIO_CTRL_EXTINT_SET) {
  r = bus_alloc_resource_any(gpio, SYS_RES_IRQ, &rid, RF_ACTIVE);
  if (r == ((void*)0))
   return (ENXIO);

  irq = rman_get_start(r);
  DPRINTF(("interrupting at irq %d\n", irq));

  if (powerpc_config_intr(irq, INTR_TRIGGER_EDGE,
      INTR_POLARITY_LOW) != 0)
   return (ENXIO);

  bus_setup_intr(gpio, r, INTR_TYPE_MISC | INTR_MPSAFE |
      INTR_ENTROPY, ((void*)0), aoagpio_int, gpio, &cookie);
 }

 return (0);
}
