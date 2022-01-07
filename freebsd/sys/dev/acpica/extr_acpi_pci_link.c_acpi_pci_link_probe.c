
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int device_t ;
typedef int descr ;


 int ACPI_ID_PROBE (int ,int ,int ,int *) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int acpi_get_handle (int ) ;
 int acpi_short_name (int ,char*,int) ;
 int device_get_parent (int ) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_desc_copy (int ,char*) ;
 int pci_link_ids ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
acpi_pci_link_probe(device_t dev)
{
 char descr[28], name[12];
 int rv;





 if (acpi_disabled("pci_link"))
     return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, pci_link_ids, ((void*)0));
 if (rv > 0)
   return (rv);

 if (ACPI_SUCCESS(acpi_short_name(acpi_get_handle(dev), name,
     sizeof(name)))) {
  snprintf(descr, sizeof(descr), "ACPI PCI Link %s", name);
  device_set_desc_copy(dev, descr);
 } else
  device_set_desc(dev, "ACPI PCI Link");
 device_quiet(dev);
 return (rv);
}
