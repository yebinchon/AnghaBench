
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_fdt_gpio {int cd_inverted; int * cd_pin; TYPE_1__* slot; scalar_t__ cd_disabled; } ;
struct TYPE_2__ {int bus; } ;


 int gpio_pin_is_active (int *,int*) ;
 int sdhci_generic_get_card_present (int ,TYPE_1__*) ;

bool
sdhci_fdt_gpio_get_present(struct sdhci_fdt_gpio *gpio)
{
 bool pinstate;

 if (gpio->cd_disabled)
  return (1);

 if (gpio->cd_pin == ((void*)0))
  return (sdhci_generic_get_card_present(gpio->slot->bus,
      gpio->slot));

 gpio_pin_is_active(gpio->cd_pin, &pinstate);

 return (pinstate ^ gpio->cd_inverted);
}
