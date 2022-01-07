
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_acpi_device {int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct sdhci_acpi_device* sdhci_acpi_find_device (int ) ;

__attribute__((used)) static int
sdhci_acpi_probe(device_t dev)
{
 const struct sdhci_acpi_device *acpi_dev;

 acpi_dev = sdhci_acpi_find_device(dev);
 if (acpi_dev == ((void*)0))
  return (ENXIO);

 device_set_desc(dev, acpi_dev->desc);

 return (BUS_PROBE_DEFAULT);
}
