
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bytgpio_softc {int sc_npins; int* sc_pad_funcs; int * sc_mem_res; scalar_t__ sc_mem_rid; int * sc_busdev; int sc_dev; int sc_pinpad_map; int sc_bank_prefix; int sc_handle; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int BYGPIO_PIN_REGISTER (struct bytgpio_softc*,int,int ) ;
 int BYTGPIO_LOCK_DESTROY (struct bytgpio_softc*) ;
 int BYTGPIO_LOCK_INIT (struct bytgpio_softc*) ;
 int BYTGPIO_PCONF0 ;
 int BYTGPIO_PCONF0_FUNC_MASK ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NCORE_BANK_PREFIX ;
 int NCORE_PINS ;

 int RF_ACTIVE ;
 int SCORE_BANK_PREFIX ;
 int SCORE_PINS ;

 int SUS_BANK_PREFIX ;
 int SUS_PINS ;

 int SYS_RES_MEMORY ;
 int acpi_GetInteger (int ,char*,int*) ;
 int acpi_get_handle (int ) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bytgpio_ncore_pins ;
 int bytgpio_read_4 (struct bytgpio_softc*,int) ;
 int bytgpio_score_pins ;
 int bytgpio_sus_pins ;
 struct bytgpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int * gpiobus_attach_bus (int ) ;
 int* malloc (int,int ,int) ;

__attribute__((used)) static int
bytgpio_attach(device_t dev)
{
 struct bytgpio_softc *sc;
 ACPI_STATUS status;
 int uid;
 int pin;
 uint32_t reg, val;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_handle = acpi_get_handle(dev);
 status = acpi_GetInteger(sc->sc_handle, "_UID", &uid);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "failed to read _UID\n");
  return (ENXIO);
 }

 BYTGPIO_LOCK_INIT(sc);

 switch (uid) {
 case 129:
  sc->sc_npins = SCORE_PINS;
  sc->sc_bank_prefix = SCORE_BANK_PREFIX;
  sc->sc_pinpad_map = bytgpio_score_pins;
  break;
 case 130:
  sc->sc_npins = NCORE_PINS;
  sc->sc_bank_prefix = NCORE_BANK_PREFIX;
  sc->sc_pinpad_map = bytgpio_ncore_pins;
  break;
 case 128:
  sc->sc_npins = SUS_PINS;
  sc->sc_bank_prefix = SUS_BANK_PREFIX;
  sc->sc_pinpad_map = bytgpio_sus_pins;
  break;
 default:
  device_printf(dev, "invalid _UID value: %d\n", uid);
  goto error;
 }

 sc->sc_pad_funcs = malloc(sizeof(int)*sc->sc_npins, M_DEVBUF,
     M_WAITOK | M_ZERO);

 sc->sc_mem_rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(sc->sc_dev,
     SYS_RES_MEMORY, &sc->sc_mem_rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "can't allocate resource\n");
  goto error;
 }

 for (pin = 0; pin < sc->sc_npins; pin++) {
     reg = BYGPIO_PIN_REGISTER(sc, pin, BYTGPIO_PCONF0);
     val = bytgpio_read_4(sc, reg);
     sc->sc_pad_funcs[pin] = val & BYTGPIO_PCONF0_FUNC_MASK;
 }

 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0)) {
  BYTGPIO_LOCK_DESTROY(sc);
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);
  return (ENXIO);
 }

 return (0);

error:
 BYTGPIO_LOCK_DESTROY(sc);

 return (ENXIO);
}
