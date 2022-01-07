
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct acpi_res_context {int dummy; } ;
typedef int device_t ;


 int device_printf (int ,char*) ;

__attribute__((used)) static void
acpi_res_set_memoryrange(device_t dev, void *context, uint64_t low,
    uint64_t high, uint64_t length, uint64_t align)
{
    struct acpi_res_context *cp = (struct acpi_res_context *)context;

    if (cp == ((void*)0))
 return;
    device_printf(dev, "memory range not supported\n");
}
