
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_gpio_softc {scalar_t__ num_pins; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 struct intr_irqsrc* PIC_INTR_ISRC (struct mtk_gpio_softc*,scalar_t__) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_gpio_pic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct intr_map_data_fdt *daf;
 struct mtk_gpio_softc *sc;

 if (data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);

 sc = device_get_softc(dev);
 daf = (struct intr_map_data_fdt *)data;

 if (daf->ncells != 1 || daf->cells[0] >= sc->num_pins)
  return (EINVAL);

 *isrcp = PIC_INTR_ISRC(sc, daf->cells[0]);
 return (0);
}
