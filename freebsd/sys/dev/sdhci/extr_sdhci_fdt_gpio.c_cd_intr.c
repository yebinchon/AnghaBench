
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_fdt_gpio {int slot; } ;


 int sdhci_fdt_gpio_get_present (struct sdhci_fdt_gpio*) ;
 int sdhci_handle_card_present (int ,int ) ;

__attribute__((used)) static void
cd_intr(void *arg)
{
 struct sdhci_fdt_gpio *gpio = arg;

 sdhci_handle_card_present(gpio->slot, sdhci_fdt_gpio_get_present(gpio));
}
