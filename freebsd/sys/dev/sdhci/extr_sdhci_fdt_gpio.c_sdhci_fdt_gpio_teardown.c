
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_fdt_gpio {int * cd_ires; int dev; int * cd_pin; int * wp_pin; int * cd_ihandler; } ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int free (struct sdhci_fdt_gpio*,int ) ;
 int gpio_pin_release (int *) ;

void
sdhci_fdt_gpio_teardown(struct sdhci_fdt_gpio *gpio)
{

 if (gpio == ((void*)0))
  return;

 if (gpio->cd_ihandler != ((void*)0))
  bus_teardown_intr(gpio->dev, gpio->cd_ires, gpio->cd_ihandler);
 if (gpio->wp_pin != ((void*)0))
  gpio_pin_release(gpio->wp_pin);
 if (gpio->cd_pin != ((void*)0))
  gpio_pin_release(gpio->cd_pin);
 if (gpio->cd_ires != ((void*)0))
  bus_release_resource(gpio->dev, SYS_RES_IRQ, 0, gpio->cd_ires);

 free(gpio, M_DEVBUF);
}
