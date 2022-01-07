
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct jz4780_gpio_softc {int pins; } ;
struct intr_map_data {int type; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int EINVAL ;

 struct jz4780_gpio_softc* device_get_softc (int ) ;
 int jz_gpio_map_intr_fdt (int ,struct intr_map_data*,scalar_t__*,int*,int*) ;
 scalar_t__ nitems (int ) ;

__attribute__((used)) static int
jz_gpio_map_intr(device_t dev, struct intr_map_data *data, u_int *irqp,
        enum intr_polarity *polp, enum intr_trigger *trigp)
{
 struct jz4780_gpio_softc *sc;
 enum intr_polarity pol;
 enum intr_trigger trig;
 u_int irq;

 sc = device_get_softc(dev);
 switch (data->type) {






 default:
  return (EINVAL);
 }

 if (irq >= nitems(sc->pins))
  return (EINVAL);

 *irqp = irq;
 if (polp != ((void*)0))
  *polp = pol;
 if (trigp != ((void*)0))
  *trigp = trig;
 return (0);
}
