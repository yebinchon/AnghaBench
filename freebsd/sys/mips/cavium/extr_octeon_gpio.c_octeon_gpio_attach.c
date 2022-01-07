
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_gpio_softc {int gpio_npins; int * busdev; TYPE_3__* gpio_pins; int dev; int * gpio_ih; struct octeon_gpio_softc** gpio_intr_cookies; int ** gpio_irq_res; int * gpio_irq_rid; int gpio_mtx; } ;
struct octeon_gpio_pin {int flags; int pin; scalar_t__ name; } ;
typedef int device_t ;
struct TYPE_4__ {int int_en; scalar_t__ int_type; int rx_xor; int tx_oe; } ;
struct TYPE_5__ {TYPE_1__ s; void* u64; } ;
typedef TYPE_2__ cvmx_gpio_bit_cfgx_t ;
struct TYPE_6__ {scalar_t__ gp_flags; int gp_caps; int gp_pin; int gp_name; } ;


 int CVMX_GPIO_BIT_CFGX (int) ;
 int DEFAULT_CAPS ;
 int ENXIO ;
 int GPIOMAXNAME ;
 int INTR_TYPE_MISC ;
 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int OCTEON_GPIO_IRQS ;
 scalar_t__ OCTEON_GPIO_IRQ_EDGE ;
 scalar_t__ OCTEON_IRQ_GPIO0 ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource (int ,int ,int *,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int ,struct octeon_gpio_softc**,int *) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;
 int device_get_nameunit (int ) ;
 struct octeon_gpio_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int octeon_gpio_detach (int ) ;
 int octeon_gpio_filter ;
 int octeon_gpio_intr ;
 int octeon_gpio_pin_configure (struct octeon_gpio_softc*,TYPE_3__*,int ) ;
 struct octeon_gpio_pin* octeon_gpio_pins ;
 int strncpy (int ,scalar_t__,int ) ;

__attribute__((used)) static int
octeon_gpio_attach(device_t dev)
{
 struct octeon_gpio_softc *sc = device_get_softc(dev);
 struct octeon_gpio_pin *pinp;
 cvmx_gpio_bit_cfgx_t gpio_cfgx;

 int i;

 KASSERT((device_get_unit(dev) == 0),
     ("octeon_gpio: Only one gpio module supported"));

 mtx_init(&sc->gpio_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 for ( i = 0; i < OCTEON_GPIO_IRQS; i++) {
  if ((sc->gpio_irq_res[i] = bus_alloc_resource(dev,
      SYS_RES_IRQ, &sc->gpio_irq_rid[i],
      OCTEON_IRQ_GPIO0 + i, OCTEON_IRQ_GPIO0 + i, 1,
      RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
   device_printf(dev, "unable to allocate IRQ resource\n");
   octeon_gpio_detach(dev);
   return (ENXIO);
  }

  sc->gpio_intr_cookies[i] = sc;
  if ((bus_setup_intr(dev, sc->gpio_irq_res[i], INTR_TYPE_MISC,
          octeon_gpio_filter, octeon_gpio_intr,
      &(sc->gpio_intr_cookies[i]), &sc->gpio_ih[i]))) {
   device_printf(dev,
       "WARNING: unable to register interrupt handler\n");
   octeon_gpio_detach(dev);
   return (ENXIO);
  }
 }

 sc->dev = dev;


 pinp = octeon_gpio_pins;
 i = 0;
 while (pinp->name) {
  strncpy(sc->gpio_pins[i].gp_name, pinp->name, GPIOMAXNAME);
  sc->gpio_pins[i].gp_pin = pinp->pin;
  sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
  sc->gpio_pins[i].gp_flags = 0;
  octeon_gpio_pin_configure(sc, &sc->gpio_pins[i], pinp->flags);
  pinp++;
  i++;
 }

 sc->gpio_npins = i;
 if (bootverbose) {
  for (i = 0; i < 16; i++) {
   gpio_cfgx.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(i));
   device_printf(dev, "[pin%d] output=%d, invinput=%d, intr=%d, intr_type=%s\n",
       i, gpio_cfgx.s.tx_oe, gpio_cfgx.s.rx_xor,
       gpio_cfgx.s.int_en, gpio_cfgx.s.int_type ? "rising edge" : "level");
  }
 }
 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0)) {
  octeon_gpio_detach(dev);
  return (ENXIO);
 }

 return (0);
}
