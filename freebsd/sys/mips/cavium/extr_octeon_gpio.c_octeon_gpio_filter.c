
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_gpio_softc {void** gpio_intr_cookies; } ;
struct TYPE_3__ {scalar_t__ int_type; scalar_t__ int_en; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_gpio_bit_cfgx_t ;


 int CVMX_GPIO_BIT_CFGX (long) ;
 int FILTER_SCHEDULE_THREAD ;
 int FILTER_STRAY ;
 long OCTEON_GPIO_IRQS ;
 scalar_t__ OCTEON_GPIO_IRQ_EDGE ;
 int cvmx_gpio_interrupt_clear (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static int
octeon_gpio_filter(void *arg)
{
 cvmx_gpio_bit_cfgx_t gpio_cfgx;
 void **cookie = arg;
 struct octeon_gpio_softc *sc = *cookie;
 long int irq = (cookie - sc->gpio_intr_cookies);

 if ((irq < 0) || (irq >= OCTEON_GPIO_IRQS))
  return (FILTER_STRAY);

 gpio_cfgx.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(irq));

 if (gpio_cfgx.s.int_type == OCTEON_GPIO_IRQ_EDGE)
  cvmx_gpio_interrupt_clear(1 << irq);

 gpio_cfgx.s.int_en = 0;
 cvmx_write_csr(CVMX_GPIO_BIT_CFGX(irq), gpio_cfgx.u64);

 return (FILTER_SCHEDULE_THREAD);
}
