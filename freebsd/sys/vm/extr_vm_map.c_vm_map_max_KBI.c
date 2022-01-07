
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct vm_map {int dummy; } ;


 int vm_map_max (struct vm_map const*) ;

vm_offset_t
vm_map_max_KBI(const struct vm_map *map)
{

 return (vm_map_max(map));
}
