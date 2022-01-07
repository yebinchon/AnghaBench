
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 int AcpiEvaluateObject (int ,char*,int *,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int acpi_get_handle (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_smbat_probe(device_t dev)
{
 static char *smbat_ids[] = {"ACPI0001", "ACPI0005", ((void*)0)};
 ACPI_STATUS status;
 int rv;

 if (acpi_disabled("smbat"))
  return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, smbat_ids, ((void*)0));
 if (rv > 0)
   return (rv);
 status = AcpiEvaluateObject(acpi_get_handle(dev), "_EC", ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status))
  return (ENXIO);
 device_set_desc(dev, "ACPI Smart Battery");
 return (rv);
}
