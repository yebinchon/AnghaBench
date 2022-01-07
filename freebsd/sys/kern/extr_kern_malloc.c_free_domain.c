
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_2__* uma_slab_t ;
typedef int u_long ;
struct malloc_type {int dummy; } ;
struct TYPE_7__ {int us_flags; int us_size; TYPE_1__* us_keg; } ;
struct TYPE_6__ {int uk_size; int uk_zones; } ;


 int LIST_FIRST (int *) ;
 int UMA_SLAB_MALLOC ;
 int UMA_SLAB_MASK ;
 scalar_t__ free_dbg (void**,struct malloc_type*) ;
 int free_save_type (void*,struct malloc_type*,int) ;
 int malloc_type_freed (struct malloc_type*,int) ;
 int panic (char*,void*,void*) ;
 int uma_large_free (TYPE_2__*) ;
 int uma_zfree_domain (int ,void*,TYPE_2__*) ;
 TYPE_2__* vtoslab (int) ;

void
free_domain(void *addr, struct malloc_type *mtp)
{
 uma_slab_t slab;
 u_long size;







 if (addr == ((void*)0))
  return;

 slab = vtoslab((vm_offset_t)addr & (~UMA_SLAB_MASK));
 if (slab == ((void*)0))
  panic("free_domain: address %p(%p) has not been allocated.\n",
      addr, (void *)((u_long)addr & (~UMA_SLAB_MASK)));

 if (!(slab->us_flags & UMA_SLAB_MALLOC)) {
  size = slab->us_keg->uk_size;



  uma_zfree_domain(LIST_FIRST(&slab->us_keg->uk_zones),
      addr, slab);
 } else {
  size = slab->us_size;
  uma_large_free(slab);
 }
 malloc_type_freed(mtp, size);
}
