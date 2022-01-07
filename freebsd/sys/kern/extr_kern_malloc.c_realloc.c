
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_2__* uma_slab_t ;
struct malloc_type {scalar_t__ ks_magic; } ;
struct TYPE_7__ {scalar_t__ td_critnest; } ;
struct TYPE_6__ {int us_flags; unsigned long us_size; TYPE_1__* us_keg; } ;
struct TYPE_5__ {unsigned long uk_size; } ;


 int KASSERT (int,char*) ;
 unsigned long MINALLOCSIZE ;
 scalar_t__ M_MAGIC ;
 unsigned long REALLOC_FRACTION ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int UMA_SLAB_MALLOC ;
 int UMA_SLAB_MASK ;
 int bcopy (void*,void*,int ) ;
 TYPE_4__* curthread ;
 int free (void*,struct malloc_type*) ;
 scalar_t__ is_memguard_addr (void*) ;
 void* malloc (size_t,struct malloc_type*,int) ;
 void* memguard_realloc (void*,size_t,struct malloc_type*,int) ;
 int min (size_t,unsigned long) ;
 unsigned long redzone_get_size (void*) ;
 TYPE_2__* vtoslab (int) ;

void *
realloc(void *addr, size_t size, struct malloc_type *mtp, int flags)
{
 uma_slab_t slab;
 unsigned long alloc;
 void *newaddr;

 KASSERT(mtp->ks_magic == M_MAGIC,
     ("realloc: bad malloc type magic"));
 KASSERT(curthread->td_critnest == 0 || SCHEDULER_STOPPED(),
     ("realloc: called with spinlock or critical section held"));


 if (addr == ((void*)0))
  return (malloc(size, mtp, flags));
 slab = vtoslab((vm_offset_t)addr & ~(UMA_SLAB_MASK));


 KASSERT(slab != ((void*)0),
     ("realloc: address %p out of range", (void *)addr));


 if (!(slab->us_flags & UMA_SLAB_MALLOC))
  alloc = slab->us_keg->uk_size;
 else
  alloc = slab->us_size;


 if (size <= alloc
     && (size > (alloc >> REALLOC_FRACTION) || alloc == MINALLOCSIZE))
  return (addr);



 if ((newaddr = malloc(size, mtp, flags)) == ((void*)0))
  return (((void*)0));


 bcopy(addr, newaddr, min(size, alloc));
 free(addr, mtp);
 return (newaddr);
}
