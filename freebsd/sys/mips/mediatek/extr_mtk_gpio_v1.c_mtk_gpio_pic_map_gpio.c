
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct mtk_gpio_softc {scalar_t__ num_pins; int dev; } ;
struct intr_map_data_gpio {scalar_t__ gpio_pin_num; int gpio_intr_mode; } ;


 int EINVAL ;
 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int
mtk_gpio_pic_map_gpio(struct mtk_gpio_softc *sc,
    struct intr_map_data_gpio *dag, u_int *irqp, uint32_t *modep)
{
 u_int irq;

 irq = dag->gpio_pin_num;
 if (irq >= sc->num_pins) {
  device_printf(sc->dev, "Invalid interrupt number %u\n", irq);
  return (EINVAL);
 }

 *irqp = irq;
 if (modep != ((void*)0))
  *modep = dag->gpio_intr_mode;

 return (0);
}
