
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int dummy; } ;
typedef int device_t ;


 int AGP_UNBIND_MEMORY (int ,struct agp_memory*) ;

int agp_unbind_memory(device_t dev, void *handle)
{
 struct agp_memory *mem = (struct agp_memory *) handle;
 return AGP_UNBIND_MEMORY(dev, mem);
}
