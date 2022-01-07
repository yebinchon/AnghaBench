
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int acpi_device_pwr_for_sleep (int ,int ,int*) ;
 int devclass_find (char*) ;
 int devclass_get_device (int ,int ) ;

int
acpi_pcib_power_for_sleep(device_t pcib, device_t dev, int *pstate)
{
    device_t acpi_dev;

    acpi_dev = devclass_get_device(devclass_find("acpi"), 0);
    acpi_device_pwr_for_sleep(acpi_dev, dev, pstate);
    return (0);
}
