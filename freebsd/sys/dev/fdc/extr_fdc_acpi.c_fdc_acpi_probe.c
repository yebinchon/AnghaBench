
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_EVALUATE_OBJECT (int ,int ,char*,int *,int *) ;
 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
fdc_acpi_probe(device_t dev)
{
 device_t bus;
 static char *fdc_ids[] = { "PNP0700", "PNP0701", ((void*)0) };
 int rv;

 bus = device_get_parent(dev);
 rv = ACPI_ID_PROBE(bus, dev, fdc_ids, ((void*)0));
 if (rv > 0)
  return (rv);

 if (ACPI_SUCCESS(ACPI_EVALUATE_OBJECT(bus, dev, "_FDE", ((void*)0), ((void*)0))))
  device_set_desc(dev, "floppy drive controller (FDE)");
 else
  device_set_desc(dev, "floppy drive controller");
 return (rv);
}
