
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int acpi_battery_remove (int ) ;

__attribute__((used)) static int
acpi_smbat_shutdown(device_t dev)
{

 acpi_battery_remove(dev);
 return (0);
}
