
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct acpi_res_context {int ar_nio; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 scalar_t__ bootverbose ;
 int bus_set_resource (int ,int ,int ,scalar_t__,scalar_t__) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
acpi_res_set_iorange(device_t dev, void *context, uint64_t low,
       uint64_t high, uint64_t length, uint64_t align)
{
    struct acpi_res_context *cp = (struct acpi_res_context *)context;

    if (cp == ((void*)0))
 return;
    if (high == (low + length)) {
 if (bootverbose)
     device_printf(dev,
  "_CRS has fixed I/O port range defined as relocatable\n");

 bus_set_resource(dev, SYS_RES_IOPORT, cp->ar_nio++, low, length);
 return;
    }

    device_printf(dev, "I/O range not supported\n");
}
