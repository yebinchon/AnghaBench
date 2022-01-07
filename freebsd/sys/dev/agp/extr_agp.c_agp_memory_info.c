
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory_info {int ami_is_bound; int ami_offset; int ami_physical; int ami_size; } ;
struct agp_memory {int am_is_bound; int am_offset; int am_physical; int am_size; } ;
typedef int device_t ;



void agp_memory_info(device_t dev, void *handle, struct
       agp_memory_info *mi)
{
 struct agp_memory *mem = (struct agp_memory *) handle;

 mi->ami_size = mem->am_size;
 mi->ami_physical = mem->am_physical;
 mi->ami_offset = mem->am_offset;
 mi->ami_is_bound = mem->am_is_bound;
}
