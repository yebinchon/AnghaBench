
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct jz4780_gpio_softc {TYPE_1__* pins; int dev; } ;
struct TYPE_4__ {int td_intr_frame; } ;
struct TYPE_3__ {int pin_irqsrc; } ;


 int CSR_READ_4 (struct jz4780_gpio_softc*,int ) ;
 int FILTER_HANDLED ;
 int JZ_GPIO_FLAG ;
 int PIC_DISABLE_INTR (int ,int *) ;
 TYPE_2__* curthread ;
 int device_printf (int ,char*,int) ;
 scalar_t__ intr_isrc_dispatch (int *,int ) ;

__attribute__((used)) static int
jz4780_gpio_intr(void *arg)
{
 struct jz4780_gpio_softc *sc;
 uint32_t i, interrupts;

 sc = arg;
 interrupts = CSR_READ_4(sc, JZ_GPIO_FLAG);

 for (i = 0; interrupts != 0; i++, interrupts >>= 1) {
  if ((interrupts & 0x1) == 0)
   continue;
  if (intr_isrc_dispatch(&sc->pins[i].pin_irqsrc,
      curthread->td_intr_frame) != 0) {
   device_printf(sc->dev, "spurious interrupt %d\n", i);
   PIC_DISABLE_INTR(sc->dev, &sc->pins[i].pin_irqsrc);
  }
 }

 return (FILTER_HANDLED);
}
