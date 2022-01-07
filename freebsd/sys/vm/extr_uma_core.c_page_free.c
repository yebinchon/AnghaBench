
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int uint8_t ;


 int UMA_SLAB_KERNEL ;
 int kmem_free (int ,int ) ;
 int panic (char*,int) ;

__attribute__((used)) static void
page_free(void *mem, vm_size_t size, uint8_t flags)
{

 if ((flags & UMA_SLAB_KERNEL) == 0)
  panic("UMA: page_free used with invalid flags %x", flags);

 kmem_free((vm_offset_t)mem, size);
}
