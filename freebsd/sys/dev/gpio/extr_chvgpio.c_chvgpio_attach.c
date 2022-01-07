
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chvgpio_softc {scalar_t__* sc_pins; int * sc_irq_res; scalar_t__ sc_irq_rid; int * sc_mem_res; scalar_t__ sc_mem_rid; int * sc_busdev; int sc_dev; int intr_handle; int sc_ngroups; int sc_npins; int sc_pin_names; int sc_bank_prefix; int sc_handle; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int CHVGPIO_INTERRUPT_MASK ;
 int CHVGPIO_INTERRUPT_STATUS ;
 int CHVGPIO_LOCK_DESTROY (struct chvgpio_softc*) ;
 int CHVGPIO_LOCK_INIT (struct chvgpio_softc*) ;
 int ENOMEM ;
 int ENXIO ;
 int E_BANK_PREFIX ;

 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int N_BANK_PREFIX ;

 int RF_ACTIVE ;
 int SE_BANK_PREFIX ;

 int SW_BANK_PREFIX ;

 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int acpi_GetInteger (int ,char*,int*) ;
 int acpi_get_handle (int ) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct chvgpio_softc*,int *) ;
 int bus_write_4 (int *,int ,int) ;
 int chv_east_pin_names ;
 scalar_t__* chv_east_pins ;
 int chv_north_pin_names ;
 scalar_t__* chv_north_pins ;
 int chv_southeast_pin_names ;
 scalar_t__* chv_southeast_pins ;
 int chv_southwest_pin_names ;
 scalar_t__* chv_southwest_pins ;
 int chvgpio_intr ;
 struct chvgpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int * gpiobus_attach_bus (int ) ;

__attribute__((used)) static int
chvgpio_attach(device_t dev)
{
 struct chvgpio_softc *sc;
 ACPI_STATUS status;
 int uid;
 int i;
 int error;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_handle = acpi_get_handle(dev);

 status = acpi_GetInteger(sc->sc_handle, "_UID", &uid);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "failed to read _UID\n");
  return (ENXIO);
 }

 CHVGPIO_LOCK_INIT(sc);

 switch (uid) {
 case 128:
  sc->sc_bank_prefix = SW_BANK_PREFIX;
  sc->sc_pins = chv_southwest_pins;
  sc->sc_pin_names = chv_southwest_pin_names;
  break;
 case 130:
  sc->sc_bank_prefix = N_BANK_PREFIX;
  sc->sc_pins = chv_north_pins;
  sc->sc_pin_names = chv_north_pin_names;
  break;
 case 131:
  sc->sc_bank_prefix = E_BANK_PREFIX;
  sc->sc_pins = chv_east_pins;
  sc->sc_pin_names = chv_east_pin_names;
  break;
 case 129:
  sc->sc_bank_prefix = SE_BANK_PREFIX;
  sc->sc_pins = chv_southeast_pins;
  sc->sc_pin_names = chv_southeast_pin_names;
  break;
 default:
  device_printf(dev, "invalid _UID value: %d\n", uid);
  return (ENXIO);
 }

 for (i = 0; sc->sc_pins[i] >= 0; i++) {
  sc->sc_npins += sc->sc_pins[i];
  sc->sc_ngroups++;
 }

 sc->sc_mem_rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(sc->sc_dev, SYS_RES_MEMORY,
  &sc->sc_mem_rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  CHVGPIO_LOCK_DESTROY(sc);
  device_printf(dev, "can't allocate memory resource\n");
  return (ENOMEM);
 }

 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
  &sc->sc_irq_rid, RF_ACTIVE);

 if (!sc->sc_irq_res) {
  CHVGPIO_LOCK_DESTROY(sc);
  bus_release_resource(dev, SYS_RES_MEMORY,
   sc->sc_mem_rid, sc->sc_mem_res);
  device_printf(dev, "can't allocate irq resource\n");
  return (ENOMEM);
 }

 error = bus_setup_intr(sc->sc_dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
  ((void*)0), chvgpio_intr, sc, &sc->intr_handle);


 if (error) {
  device_printf(sc->sc_dev, "unable to setup irq: error %d\n", error);
  CHVGPIO_LOCK_DESTROY(sc);
  bus_release_resource(dev, SYS_RES_MEMORY,
   sc->sc_mem_rid, sc->sc_mem_res);
  bus_release_resource(dev, SYS_RES_IRQ,
   sc->sc_irq_rid, sc->sc_irq_res);
  return (ENXIO);
 }


 bus_write_4(sc->sc_mem_res, CHVGPIO_INTERRUPT_MASK, 0);
 bus_write_4(sc->sc_mem_res, CHVGPIO_INTERRUPT_STATUS, 0xffff);

 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0)) {
  CHVGPIO_LOCK_DESTROY(sc);
  bus_release_resource(dev, SYS_RES_MEMORY,
   sc->sc_mem_rid, sc->sc_mem_res);
  bus_release_resource(dev, SYS_RES_IRQ,
   sc->sc_irq_rid, sc->sc_irq_res);
  return (ENXIO);
 }

 return (0);
}
