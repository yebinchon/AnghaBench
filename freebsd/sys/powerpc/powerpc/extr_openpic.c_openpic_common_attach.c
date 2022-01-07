
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
typedef void* u_int ;
struct resource_list {int dummy; } ;
struct openpic_softc {char* sc_version; int sc_ncpu; int sc_nirq; int sc_quirks; int * sc_intr; scalar_t__ sc_psim; int sc_icookie; scalar_t__ sc_irq; int * sc_memr; int sc_bh; int sc_bt; scalar_t__ sc_rid; void* sc_dev; } ;
typedef void* device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,void*) ;
 int DELAY (int) ;
 int ENXIO ;
 int FALSE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int OPENPIC_CONFIG ;
 int OPENPIC_CONFIG_8259_PASSTHRU_DISABLE ;
 int OPENPIC_CONFIG_RESET ;
 int OPENPIC_FEATURE ;
 int OPENPIC_FEATURE_LAST_CPU_MASK ;
 int OPENPIC_FEATURE_LAST_CPU_SHIFT ;
 int OPENPIC_FEATURE_LAST_IRQ_MASK ;
 int OPENPIC_FEATURE_LAST_IRQ_SHIFT ;
 int OPENPIC_FEATURE_VERSION_MASK ;
 int OPENPIC_IDEST (void*) ;
 int OPENPIC_IMASK ;
 int OPENPIC_IPI_VECTOR (void*) ;
 void* OPENPIC_IRQMAX ;
 void* OPENPIC_NIPIS ;
 int OPENPIC_PCPU_EOI (int ) ;
 int OPENPIC_PCPU_IACK (int ) ;
 int OPENPIC_PCPU_TPR (void*) ;
 int OPENPIC_POLARITY_NEGATIVE ;
 int OPENPIC_PRIORITY_SHIFT ;
 int OPENPIC_QUIRK_HIDDEN_IRQS ;
 int OPENPIC_SENSE_LEVEL ;
 int OPENPIC_SRC_VECTOR (void*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (void*,int ,scalar_t__*,int ) ;
 int bus_setup_intr (void*,int *,int,int ,int *,void*,int *) ;
 int device_get_parent (void*) ;
 struct openpic_softc* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int openpic_intr ;
 int openpic_read (struct openpic_softc*,int ) ;
 int openpic_write (struct openpic_softc*,int ,int) ;
 int powerpc_register_pic (void*,int ,void*,void*,int ) ;
 int powerpc_sync () ;
 int * resource_list_find (struct resource_list*,int ,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 void* root_pic ;

int
openpic_common_attach(device_t dev, uint32_t node)
{
 struct openpic_softc *sc;
 u_int cpu, ipi, irq;
 u_int32_t x;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_rid = 0;
 sc->sc_memr = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rid,
     RF_ACTIVE);

 if (sc->sc_memr == ((void*)0)) {
  device_printf(dev, "Could not alloc mem resource!\n");
  return (ENXIO);
 }

 sc->sc_bt = rman_get_bustag(sc->sc_memr);
 sc->sc_bh = rman_get_bushandle(sc->sc_memr);


 x = openpic_read(sc, OPENPIC_CONFIG);
 x |= OPENPIC_CONFIG_RESET;
 openpic_write(sc, OPENPIC_CONFIG, x);

 while (openpic_read(sc, OPENPIC_CONFIG) & OPENPIC_CONFIG_RESET) {
  powerpc_sync();
  DELAY(100);
 }


 sc->sc_irq = 0;
 sc->sc_intr = ((void*)0);
 do {
  struct resource_list *rl;

  rl = BUS_GET_RESOURCE_LIST(device_get_parent(dev), dev);
  if (rl == ((void*)0))
   break;
  if (resource_list_find(rl, SYS_RES_IRQ, 0) == ((void*)0))
   break;

  sc->sc_intr = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &sc->sc_irq, RF_ACTIVE);


  bus_setup_intr(dev, sc->sc_intr, INTR_TYPE_MISC | INTR_MPSAFE,
      openpic_intr, ((void*)0), dev, &sc->sc_icookie);
 } while (0);


 x = openpic_read(sc, OPENPIC_CONFIG);
 x |= OPENPIC_CONFIG_RESET;
 openpic_write(sc, OPENPIC_CONFIG, x);

 while (openpic_read(sc, OPENPIC_CONFIG) & OPENPIC_CONFIG_RESET) {
  powerpc_sync();
  DELAY(100);
 }

 x = openpic_read(sc, OPENPIC_FEATURE);
 switch (x & OPENPIC_FEATURE_VERSION_MASK) {
 case 1:
  sc->sc_version = "1.0";
  break;
 case 2:
  sc->sc_version = "1.2";
  break;
 case 3:
  sc->sc_version = "1.3";
  break;
 default:
  sc->sc_version = "unknown";
  break;
 }

 sc->sc_ncpu = ((x & OPENPIC_FEATURE_LAST_CPU_MASK) >>
     OPENPIC_FEATURE_LAST_CPU_SHIFT) + 1;
 sc->sc_nirq = ((x & OPENPIC_FEATURE_LAST_IRQ_MASK) >>
     OPENPIC_FEATURE_LAST_IRQ_SHIFT) + 1;




 if (sc->sc_psim) {
  sc->sc_nirq--;
  sc->sc_ncpu--;
 }

 if (bootverbose)
  device_printf(dev,
      "Version %s, supports %d CPUs and %d irqs\n",
      sc->sc_version, sc->sc_ncpu, sc->sc_nirq);






 if (sc->sc_quirks & OPENPIC_QUIRK_HIDDEN_IRQS)
  sc->sc_nirq = OPENPIC_IRQMAX - OPENPIC_NIPIS;

 for (cpu = 0; cpu < sc->sc_ncpu; cpu++)
  openpic_write(sc, OPENPIC_PCPU_TPR(cpu), 15);


 for (irq = 0; irq < sc->sc_nirq; irq++) {
  x = irq;
  x |= OPENPIC_IMASK;
  x |= OPENPIC_POLARITY_NEGATIVE;
  x |= OPENPIC_SENSE_LEVEL;
  x |= 8 << OPENPIC_PRIORITY_SHIFT;
  openpic_write(sc, OPENPIC_SRC_VECTOR(irq), x);
 }


 for (ipi = 0; ipi < OPENPIC_NIPIS; ipi++) {
  x = sc->sc_nirq + ipi;
  x |= OPENPIC_IMASK;
  x |= 15 << OPENPIC_PRIORITY_SHIFT;
  openpic_write(sc, OPENPIC_IPI_VECTOR(ipi), x);
 }


 x = openpic_read(sc, OPENPIC_CONFIG);
 x |= OPENPIC_CONFIG_8259_PASSTHRU_DISABLE;
 openpic_write(sc, OPENPIC_CONFIG, x);


 for (irq = 0; irq < sc->sc_nirq; irq++)
  openpic_write(sc, OPENPIC_IDEST(irq), 1 << 0);


 for (irq = 0; irq < sc->sc_nirq; irq++) {
  (void)openpic_read(sc, OPENPIC_PCPU_IACK(0));
  openpic_write(sc, OPENPIC_PCPU_EOI(0), 0);
 }

 for (cpu = 0; cpu < sc->sc_ncpu; cpu++)
  openpic_write(sc, OPENPIC_PCPU_TPR(cpu), 0);

 powerpc_register_pic(dev, node, sc->sc_nirq, OPENPIC_NIPIS, FALSE);


 if (sc->sc_intr == ((void*)0))
  root_pic = dev;

 return (0);
}
