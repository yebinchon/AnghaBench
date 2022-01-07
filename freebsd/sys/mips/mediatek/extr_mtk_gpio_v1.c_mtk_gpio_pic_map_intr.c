
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mtk_gpio_softc {int dummy; } ;
struct intr_map_data_gpio {int dummy; } ;
struct intr_map_data_fdt {int dummy; } ;
struct intr_map_data {int type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;


 struct intr_irqsrc* PIC_INTR_ISRC (struct mtk_gpio_softc*,int ) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtk_gpio_pic_map_fdt (struct mtk_gpio_softc*,struct intr_map_data_fdt*,int *,int *) ;
 int mtk_gpio_pic_map_gpio (struct mtk_gpio_softc*,struct intr_map_data_gpio*,int *,int *) ;

__attribute__((used)) static int
mtk_gpio_pic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 int error;
 u_int irq;
 struct mtk_gpio_softc *sc;

 sc = device_get_softc(dev);
 switch (data->type) {
 case 129:
  error = (mtk_gpio_pic_map_fdt(sc,
      (struct intr_map_data_fdt *)data, &irq, ((void*)0)));
  break;
 case 128:
  error = (mtk_gpio_pic_map_gpio(sc,
      (struct intr_map_data_gpio *)data, &irq, ((void*)0)));
  break;
 default:
  error = EINVAL;
  break;
 }

 if (error != 0) {
  device_printf(dev, "Invalid map type\n");
  return (error);
 }

 *isrcp = PIC_INTR_ISRC(sc, irq);
 return (0);
}
