
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct malloc_type {int dummy; } ;
typedef void* caddr_t ;
struct TYPE_5__ {TYPE_1__** kz_zone; } ;
struct TYPE_4__ {size_t uz_size; } ;


 int KASSERT (int ,char*) ;
 size_t KMEM_ZBASE ;
 size_t KMEM_ZMASK ;
 size_t KMEM_ZSHIFT ;
 int M_EXEC ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 size_t kmem_zmax ;
 int* kmemsize ;
 TYPE_3__* kmemzones ;
 int * krequests ;
 scalar_t__ malloc_dbg (void**,size_t*,struct malloc_type*,int) ;
 int malloc_type_allocated (struct malloc_type*,size_t) ;
 int malloc_type_zone_allocated (struct malloc_type*,size_t,int) ;
 size_t mtp_get_subzone (struct malloc_type*) ;
 void* redzone_setup (void*,unsigned long) ;
 size_t roundup (size_t,int ) ;
 int t_malloc_fail ;
 int time_uptime ;
 void* uma_large_malloc_domain (size_t,int,int) ;
 void* uma_zalloc_domain (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static void *
malloc_domain(size_t size, struct malloc_type *mtp, int domain, int flags)
{
 int indx;
 caddr_t va;
 uma_zone_t zone;
 if (size <= kmem_zmax && (flags & M_EXEC) == 0) {
  if (size & KMEM_ZMASK)
   size = (size & ~KMEM_ZMASK) + KMEM_ZBASE;
  indx = kmemsize[size >> KMEM_ZSHIFT];
  zone = kmemzones[indx].kz_zone[mtp_get_subzone(mtp)];



  va = uma_zalloc_domain(zone, ((void*)0), domain, flags);
  if (va != ((void*)0))
   size = zone->uz_size;
  malloc_type_zone_allocated(mtp, va == ((void*)0) ? 0 : size, indx);
 } else {
  size = roundup(size, PAGE_SIZE);
  zone = ((void*)0);
  va = uma_large_malloc_domain(size, domain, flags);
  malloc_type_allocated(mtp, va == ((void*)0) ? 0 : size);
 }
 if (flags & M_WAITOK)
  KASSERT(va != ((void*)0), ("malloc(M_WAITOK) returned NULL"));
 else if (va == ((void*)0))
  t_malloc_fail = time_uptime;




 return ((void *) va);
}
