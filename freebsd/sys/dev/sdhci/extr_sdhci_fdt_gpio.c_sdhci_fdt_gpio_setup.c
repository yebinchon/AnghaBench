
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;
struct sdhci_fdt_gpio {struct sdhci_slot* slot; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int cd_setup (struct sdhci_fdt_gpio*,int ) ;
 struct sdhci_fdt_gpio* malloc (int,int ,int) ;
 int ofw_bus_get_node (int ) ;
 int wp_setup (struct sdhci_fdt_gpio*,int ) ;

struct sdhci_fdt_gpio *
sdhci_fdt_gpio_setup(device_t dev, struct sdhci_slot *slot)
{
 phandle_t node;
 struct sdhci_fdt_gpio *gpio;

 gpio = malloc(sizeof(*gpio), M_DEVBUF, M_ZERO | M_WAITOK);
 gpio->dev = dev;
 gpio->slot = slot;

 node = ofw_bus_get_node(dev);

 wp_setup(gpio, node);
 cd_setup(gpio, node);

 return (gpio);
}
