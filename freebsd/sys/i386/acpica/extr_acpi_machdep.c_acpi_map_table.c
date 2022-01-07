
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 void* map_table (int ,int ,char const*) ;

void *
acpi_map_table(vm_paddr_t pa, const char *sig)
{

 return (map_table(pa, 0, sig));
}
