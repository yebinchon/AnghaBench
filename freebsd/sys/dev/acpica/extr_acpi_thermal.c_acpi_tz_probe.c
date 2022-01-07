
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ ACPI_TYPE_THERMAL ;
 int ENXIO ;
 int acpi_disabled (char*) ;
 scalar_t__ acpi_get_type (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_tz_probe(device_t dev)
{
    int result;

    if (acpi_get_type(dev) == ACPI_TYPE_THERMAL && !acpi_disabled("thermal")) {
 device_set_desc(dev, "Thermal Zone");
 result = -10;
    } else
 result = ENXIO;
    return (result);
}
