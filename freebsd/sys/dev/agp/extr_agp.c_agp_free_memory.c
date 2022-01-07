
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int dummy; } ;
typedef int device_t ;


 int AGP_FREE_MEMORY (int ,struct agp_memory*) ;

void agp_free_memory(device_t dev, void *handle)
{
 struct agp_memory *mem = (struct agp_memory *) handle;
 AGP_FREE_MEMORY(dev, mem);
}
