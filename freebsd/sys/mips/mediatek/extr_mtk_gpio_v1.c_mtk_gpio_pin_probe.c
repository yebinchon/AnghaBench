
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct mtk_gpio_softc {TYPE_1__* pins; } ;
struct TYPE_2__ {int pin_flags; int intr_polarity; int intr_trigger; } ;


 int GPIO_PIN_INPUT ;
 int GPIO_PIN_INVIN ;
 int GPIO_PIN_INVOUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIODIR ;
 int GPIO_PIOFENA ;
 int GPIO_PIOPOL ;
 int GPIO_PIORENA ;
 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 unsigned int MTK_READ_4 (struct mtk_gpio_softc*,int ) ;

__attribute__((used)) static void
mtk_gpio_pin_probe(struct mtk_gpio_softc *sc, uint32_t pin)
{
 uint32_t mask = (1u << pin);
 uint32_t val;


 sc->pins[pin].pin_flags = 0;

 val = MTK_READ_4(sc, GPIO_PIORENA) |
     MTK_READ_4(sc, GPIO_PIOFENA);
 if (val & mask) {

  sc->pins[pin].intr_trigger = INTR_TRIGGER_EDGE;
  val = MTK_READ_4(sc, GPIO_PIORENA);
  if (val & mask)
   sc->pins[pin].intr_polarity = INTR_POLARITY_HIGH;
  else
   sc->pins[pin].intr_polarity = INTR_POLARITY_LOW;
 }

 val = MTK_READ_4(sc, GPIO_PIODIR);
 if (val & mask)
  sc->pins[pin].pin_flags |= GPIO_PIN_OUTPUT;
 else
  sc->pins[pin].pin_flags |= GPIO_PIN_INPUT;

 val = MTK_READ_4(sc, GPIO_PIOPOL);
 if (val & mask) {
  if (sc->pins[pin].pin_flags & GPIO_PIN_INPUT) {
   sc->pins[pin].pin_flags |= GPIO_PIN_INVIN;
  } else {
   sc->pins[pin].pin_flags |= GPIO_PIN_INVOUT;
  }
 }
}
