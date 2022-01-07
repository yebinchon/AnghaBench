
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct octeon_gpio_softc {int dummy; } ;
struct gpio_pin {int gp_pin; unsigned int gp_flags; } ;
struct TYPE_3__ {int tx_oe; int rx_xor; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_gpio_bit_cfgx_t ;


 int CVMX_GPIO_BIT_CFGX (int) ;
 int GPIO_LOCK (struct octeon_gpio_softc*) ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_INVIN ;
 unsigned int GPIO_PIN_OUTPUT ;
 int GPIO_UNLOCK (struct octeon_gpio_softc*) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static void
octeon_gpio_pin_configure(struct octeon_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{
 uint32_t mask;
 cvmx_gpio_bit_cfgx_t gpio_cfgx;

 mask = 1 << pin->gp_pin;
 GPIO_LOCK(sc);




 if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
  gpio_cfgx.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(pin->gp_pin));
  pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT) {
   pin->gp_flags |= GPIO_PIN_OUTPUT;
   gpio_cfgx.s.tx_oe = 1;
  }
  else {
   pin->gp_flags |= GPIO_PIN_INPUT;
   gpio_cfgx.s.tx_oe = 0;
  }
  if (flags & GPIO_PIN_INVIN)
   gpio_cfgx.s.rx_xor = 1;
  else
   gpio_cfgx.s.rx_xor = 0;
  cvmx_write_csr(CVMX_GPIO_BIT_CFGX(pin->gp_pin), gpio_cfgx.u64);
 }

 GPIO_UNLOCK(sc);
}
