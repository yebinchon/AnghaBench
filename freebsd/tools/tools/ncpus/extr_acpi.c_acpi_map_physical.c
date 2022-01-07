
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_offset_t ;
struct acpi_user_mapping {void* va; void* pa; } ;


 struct acpi_user_mapping* acpi_user_find_mapping (void*,size_t) ;

__attribute__((used)) static void *
acpi_map_physical(vm_offset_t pa, size_t size)
{
 struct acpi_user_mapping *map;

 map = acpi_user_find_mapping(pa, size);
 return (map->va + (pa - map->pa));
}
