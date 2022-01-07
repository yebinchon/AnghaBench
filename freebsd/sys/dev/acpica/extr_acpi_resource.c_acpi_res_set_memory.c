
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct acpi_res_context {int ar_nmem; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_set_resource (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
acpi_res_set_memory(device_t dev, void *context, uint64_t base,
      uint64_t length)
{
    struct acpi_res_context *cp = (struct acpi_res_context *)context;

    if (cp == ((void*)0))
 return;
    bus_set_resource(dev, SYS_RES_MEMORY, cp->ar_nmem++, base, length);
}
