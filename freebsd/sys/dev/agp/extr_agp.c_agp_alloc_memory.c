
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int device_t ;


 scalar_t__ AGP_ALLOC_MEMORY (int ,int,int ) ;

void *agp_alloc_memory(device_t dev, int type, vm_size_t bytes)
{
 return (void *) AGP_ALLOC_MEMORY(dev, type, bytes);
}
