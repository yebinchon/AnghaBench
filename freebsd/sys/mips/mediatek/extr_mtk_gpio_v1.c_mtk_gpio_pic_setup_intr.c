
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef unsigned int u_int ;
struct resource {int dummy; } ;
struct mtk_gpio_softc {int dummy; } ;
struct intr_map_data_gpio {int dummy; } ;
struct intr_map_data_fdt {int dummy; } ;
struct intr_map_data {int type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int ENOTSUP ;
 scalar_t__ GPIO_INTR_EDGE_BOTH ;
 scalar_t__ GPIO_INTR_EDGE_FALLING ;
 scalar_t__ GPIO_INTR_EDGE_RISING ;
 int GPIO_PIOFENA ;
 int GPIO_PIORENA ;


 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 unsigned int MTK_READ_4 (struct mtk_gpio_softc*,int ) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,scalar_t__) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;
 int mtk_gpio_pic_map_fdt (struct mtk_gpio_softc*,struct intr_map_data_fdt*,unsigned int*,scalar_t__*) ;
 int mtk_gpio_pic_map_gpio (struct mtk_gpio_softc*,struct intr_map_data_gpio*,unsigned int*,scalar_t__*) ;

__attribute__((used)) static int
mtk_gpio_pic_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct mtk_gpio_softc *sc;
 uint32_t val;
 int error;
 uint32_t mode;
 u_int irq;

 if (data == ((void*)0))
  return (ENOTSUP);

 sc = device_get_softc(dev);

 switch (data->type) {
 case 129:
  error = mtk_gpio_pic_map_fdt(sc,
      (struct intr_map_data_fdt *)data, &irq, &mode);
  break;
 case 128:
  error = mtk_gpio_pic_map_gpio(sc,
      (struct intr_map_data_gpio *)data, &irq, &mode);
  break;
 default:
  error = ENOTSUP;
  break;
 }

 if (error != 0)
  return (error);

 MTK_GPIO_LOCK(sc);
 if (mode == GPIO_INTR_EDGE_BOTH || mode == GPIO_INTR_EDGE_RISING) {
  val = MTK_READ_4(sc, GPIO_PIORENA) | (1u << irq);
  MTK_WRITE_4(sc, GPIO_PIORENA, val);
 }
 if (mode == GPIO_INTR_EDGE_BOTH || mode == GPIO_INTR_EDGE_FALLING) {
  val = MTK_READ_4(sc, GPIO_PIOFENA) | (1u << irq);
  MTK_WRITE_4(sc, GPIO_PIOFENA, val);
 }
 MTK_GPIO_UNLOCK(sc);
 return (0);
}
