
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int uint8_t ;


 int kmem_free (int ,int ) ;

void
busdma_bufalloc_free_uncacheable(void *item, vm_size_t size, uint8_t pflag)
{

 kmem_free((vm_offset_t)item, size);
}
