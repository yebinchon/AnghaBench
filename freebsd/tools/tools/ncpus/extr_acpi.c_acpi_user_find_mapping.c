
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct acpi_user_mapping {scalar_t__ pa; scalar_t__ size; scalar_t__ va; } ;


 struct acpi_user_mapping* LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,struct acpi_user_mapping*,int ) ;
 struct acpi_user_mapping* LIST_NEXT (struct acpi_user_mapping*,int ) ;
 int MAP_SHARED ;
 int PROT_READ ;
 int acpi_mem_fd ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int link ;
 struct acpi_user_mapping* malloc (int) ;
 int maplist ;
 scalar_t__ mmap (int ,size_t,int ,int ,int ,scalar_t__) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

__attribute__((used)) static struct acpi_user_mapping *
acpi_user_find_mapping(vm_offset_t pa, size_t size)
{
 struct acpi_user_mapping *map;


 for (map = LIST_FIRST(&maplist); map; map = LIST_NEXT(map, link)) {
  if (map->pa <= pa && map->size >= pa + size - map->pa)
   return (map);
 }


 size = round_page(pa + size) - trunc_page(pa);
 pa = trunc_page(pa);
 map = malloc(sizeof(struct acpi_user_mapping));
 if (!map)
  errx(1, "out of memory");
 map->pa = pa;
 map->va = mmap(0, size, PROT_READ, MAP_SHARED, acpi_mem_fd, pa);
 map->size = size;
 if ((intptr_t) map->va == -1)
  err(1, "can't map address");
 LIST_INSERT_HEAD(&maplist, map, link);

 return (map);
}
