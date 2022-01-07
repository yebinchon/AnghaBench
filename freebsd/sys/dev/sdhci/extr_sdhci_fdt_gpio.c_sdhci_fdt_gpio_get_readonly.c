
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_fdt_gpio {int wp_inverted; int * wp_pin; TYPE_1__* slot; scalar_t__ wp_disabled; } ;
struct TYPE_2__ {int dev; int bus; } ;


 int gpio_pin_is_active (int *,int*) ;
 int sdhci_generic_get_ro (int ,int ) ;

int
sdhci_fdt_gpio_get_readonly(struct sdhci_fdt_gpio *gpio)
{
 bool pinstate;

 if (gpio->wp_disabled)
  return (0);

 if (gpio->wp_pin == ((void*)0))
  return (sdhci_generic_get_ro(gpio->slot->bus, gpio->slot->dev));

 gpio_pin_is_active(gpio->wp_pin, &pinstate);

 return (pinstate ^ gpio->wp_inverted);
}
