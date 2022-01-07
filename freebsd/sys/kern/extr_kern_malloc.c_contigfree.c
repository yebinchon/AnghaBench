
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct malloc_type {int dummy; } ;


 int kmem_free (int ,unsigned long) ;
 int malloc_type_freed (struct malloc_type*,int ) ;
 int round_page (unsigned long) ;

void
contigfree(void *addr, unsigned long size, struct malloc_type *type)
{

 kmem_free((vm_offset_t)addr, size);
 malloc_type_freed(type, round_page(size));
}
