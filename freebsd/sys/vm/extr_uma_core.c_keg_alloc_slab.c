
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_slab_t ;
typedef TYPE_3__* uma_keg_t ;
typedef int * (* uma_alloc ) (TYPE_1__*,unsigned long,int,int *,int) ;
typedef int uint8_t ;
struct TYPE_21__ {int uk_flags; int uk_ppera; int uk_pgoff; int uk_ipers; scalar_t__ (* uk_init ) (int *,int ,int) ;int uk_rsize; int uk_pages; int uk_free; int uk_hash; int uk_name; int uk_size; int uk_slabzone; int * (* uk_allocf ) (TYPE_1__*,unsigned long,int,int *,int) ;int uk_lock; } ;
struct TYPE_20__ {int us_freecount; int us_domain; int * us_data; int us_debugfree; int us_free; int us_flags; TYPE_3__* us_keg; } ;
struct TYPE_19__ {int * uz_lockptr; } ;


 int BIT_FILL (int ,int *) ;
 int BIT_ZERO (int ,int *) ;
 int CTR3 (int ,char*,TYPE_2__*,int ,TYPE_3__*) ;
 int KASSERT (int,char*) ;
 int KEG_LOCK (TYPE_3__*) ;
 int KEG_LOCK_ASSERT (TYPE_3__*) ;
 int KEG_UNLOCK (TYPE_3__*) ;
 int KTR_UMA ;
 int MPASS (int) ;
 int M_NODUMP ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int SKIP_NONE ;
 int SLAB_SETSIZE ;
 int UMA_HASH_INSERT (int *,TYPE_2__*,int *) ;
 int UMA_ZONE_HASH ;
 int UMA_ZONE_MALLOC ;
 int UMA_ZONE_NODUMP ;
 int UMA_ZONE_OFFPAGE ;
 int UMA_ZONE_VTOSLAB ;
 int keg_free_slab (TYPE_3__*,TYPE_2__*,int) ;
 scalar_t__ stub1 (int *,int ,int) ;
 int uma_total_inc (unsigned long) ;
 int vm_ndomains ;
 int vsetslab (scalar_t__,TYPE_2__*) ;
 TYPE_2__* zone_alloc_item (int ,int *,int,int) ;
 int zone_free_item (int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static uma_slab_t
keg_alloc_slab(uma_keg_t keg, uma_zone_t zone, int domain, int flags,
    int aflags)
{
 uma_alloc allocf;
 uma_slab_t slab;
 unsigned long size;
 uint8_t *mem;
 uint8_t sflags;
 int i;

 KASSERT(domain >= 0 && domain < vm_ndomains,
     ("keg_alloc_slab: domain %d out of range", domain));
 KEG_LOCK_ASSERT(keg);
 MPASS(zone->uz_lockptr == &keg->uk_lock);

 allocf = keg->uk_allocf;
 KEG_UNLOCK(keg);

 slab = ((void*)0);
 mem = ((void*)0);
 if (keg->uk_flags & UMA_ZONE_OFFPAGE) {
  slab = zone_alloc_item(keg->uk_slabzone, ((void*)0), domain, aflags);
  if (slab == ((void*)0))
   goto out;
 }
 if ((keg->uk_flags & UMA_ZONE_MALLOC) == 0)
  aflags |= M_ZERO;
 else
  aflags &= ~M_ZERO;

 if (keg->uk_flags & UMA_ZONE_NODUMP)
  aflags |= M_NODUMP;


 size = keg->uk_ppera * PAGE_SIZE;
 mem = allocf(zone, size, domain, &sflags, aflags);
 if (mem == ((void*)0)) {
  if (keg->uk_flags & UMA_ZONE_OFFPAGE)
   zone_free_item(keg->uk_slabzone, slab, ((void*)0), SKIP_NONE);
  slab = ((void*)0);
  goto out;
 }
 uma_total_inc(size);


 if (!(keg->uk_flags & UMA_ZONE_OFFPAGE))
  slab = (uma_slab_t )(mem + keg->uk_pgoff);

 if (keg->uk_flags & UMA_ZONE_VTOSLAB)
  for (i = 0; i < keg->uk_ppera; i++)
   vsetslab((vm_offset_t)mem + (i * PAGE_SIZE), slab);

 slab->us_keg = keg;
 slab->us_data = mem;
 slab->us_freecount = keg->uk_ipers;
 slab->us_flags = sflags;
 slab->us_domain = domain;
 BIT_FILL(SLAB_SETSIZE, &slab->us_free);




 if (keg->uk_init != ((void*)0)) {
  for (i = 0; i < keg->uk_ipers; i++)
   if (keg->uk_init(slab->us_data + (keg->uk_rsize * i),
       keg->uk_size, flags) != 0)
    break;
  if (i != keg->uk_ipers) {
   keg_free_slab(keg, slab, i);
   slab = ((void*)0);
   goto out;
  }
 }
 KEG_LOCK(keg);

 CTR3(KTR_UMA, "keg_alloc_slab: allocated slab %p for %s(%p)",
     slab, keg->uk_name, keg);

 if (keg->uk_flags & UMA_ZONE_HASH)
  UMA_HASH_INSERT(&keg->uk_hash, slab, mem);

 keg->uk_pages += keg->uk_ppera;
 keg->uk_free += keg->uk_ipers;

out:
 return (slab);
}
