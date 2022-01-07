
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct agp_memory {int dummy; } ;
typedef int device_t ;


 int AGP_BIND_MEMORY (int ,struct agp_memory*,int ) ;

int agp_bind_memory(device_t dev, void *handle, vm_offset_t offset)
{
 struct agp_memory *mem = (struct agp_memory *) handle;
 return AGP_BIND_MEMORY(dev, mem, offset);
}
