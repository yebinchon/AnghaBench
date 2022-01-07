
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_pin {unsigned int gp_flags; int gp_pin; } ;
struct dwgpio_softc {int port; } ;


 int GPIO_LOCK (struct dwgpio_softc*) ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 int GPIO_SWPORT_DDR (int ) ;
 int GPIO_UNLOCK (struct dwgpio_softc*) ;
 int READ4 (struct dwgpio_softc*,int ) ;
 int WRITE4 (struct dwgpio_softc*,int ,int) ;

__attribute__((used)) static void
dwgpio_pin_configure(struct dwgpio_softc *sc,
    struct gpio_pin *pin, unsigned int flags)
{
 int reg;

 GPIO_LOCK(sc);





 reg = READ4(sc, GPIO_SWPORT_DDR(sc->port));
 if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
  pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT) {
   pin->gp_flags |= GPIO_PIN_OUTPUT;
   reg |= (1 << pin->gp_pin);
  } else {
   pin->gp_flags |= GPIO_PIN_INPUT;
   reg &= ~(1 << pin->gp_pin);
  }
 }

 WRITE4(sc, GPIO_SWPORT_DDR(sc->port), reg);
 GPIO_UNLOCK(sc);
}
