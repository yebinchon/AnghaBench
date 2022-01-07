
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int device_get_parent (int ) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_sysres_probe(device_t dev)
{
    static char *sysres_ids[] = { "PNP0C01", "PNP0C02", ((void*)0) };
    int rv;

    if (acpi_disabled("sysresource"))
 return (ENXIO);
    rv = ACPI_ID_PROBE(device_get_parent(dev), dev, sysres_ids, ((void*)0));
    if (rv > 0){
 return (rv);
    }
    device_set_desc(dev, "System Resource");
    device_quiet(dev);
    return (rv);
}
