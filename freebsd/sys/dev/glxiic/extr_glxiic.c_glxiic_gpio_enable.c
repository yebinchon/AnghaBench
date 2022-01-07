
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxiic_softc {int gpio_res; } ;


 int GLXIIC_GPIOL_IN_AUX1_SEL ;
 int GLXIIC_GPIOL_OUT_AUX1_SEL ;
 int GLXIIC_GPIO_14_15_ENABLE ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
glxiic_gpio_enable(struct glxiic_softc *sc)
{

 bus_write_4(sc->gpio_res, GLXIIC_GPIOL_IN_AUX1_SEL,
     GLXIIC_GPIO_14_15_ENABLE);
 bus_write_4(sc->gpio_res, GLXIIC_GPIOL_OUT_AUX1_SEL,
     GLXIIC_GPIO_14_15_ENABLE);
}
