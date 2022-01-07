
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 int EBUSY ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ipmi_attached ;

int
ipmi_acpi_probe(device_t dev)
{
 static char *ipmi_ids[] = {"IPI0001", ((void*)0)};
 int rv;

 if (ipmi_attached)
  return (EBUSY);

 if (acpi_disabled("ipmi"))
  return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, ipmi_ids, ((void*)0));
 if (rv <= 0)
  device_set_desc(dev, "IPMI System Interface");

 return (rv);
}
