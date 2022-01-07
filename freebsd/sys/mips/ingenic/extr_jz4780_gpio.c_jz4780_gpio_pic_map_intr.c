
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct jz4780_gpio_softc {TYPE_1__* pins; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct intr_irqsrc pin_irqsrc; } ;


 struct jz4780_gpio_softc* device_get_softc (int ) ;
 int jz_gpio_map_intr (int ,struct intr_map_data*,size_t*,int *,int *) ;

__attribute__((used)) static int
jz4780_gpio_pic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct jz4780_gpio_softc *sc;
 int retval;
 u_int irq;

 retval = jz_gpio_map_intr(dev, data, &irq, ((void*)0), ((void*)0));
 if (retval == 0) {
  sc = device_get_softc(dev);
  *isrcp = &sc->pins[irq].pin_irqsrc;
 }
 return (retval);
}
