
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* uma_zone_t ;
typedef TYPE_2__* uma_keg_t ;
struct uma_slab {int dummy; } ;
struct uma_kctor_args {scalar_t__ size; int flags; TYPE_2__* zone; int align; int fini; int uminit; } ;
struct TYPE_12__ {scalar_t__ dr_iter; int dr_policy; } ;
struct TYPE_13__ {scalar_t__ uk_size; int uk_pages; int uk_flags; int uk_ppera; int uk_pgoff; int uk_ipers; int uk_zones; scalar_t__ uk_free; int uz_name; int uk_hash; int uk_rsize; int uk_freef; int uk_allocf; int * uk_slabzone; int uk_init; int uk_name; TYPE_1__ uk_dr; scalar_t__ uk_reserve; int uk_align; int uk_fini; } ;


 scalar_t__ BOOT_PAGEALLOC ;
 int CTR5 (int ,char*,TYPE_2__*,int ,TYPE_2__*,scalar_t__,scalar_t__) ;
 int DOMAINSET_RR () ;
 int KASSERT (int,char*) ;
 int KEG_LOCK_INIT (TYPE_2__*,int) ;
 int KTR_UMA ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int PAGE_SIZE ;
 int SIZEOF_UMA_SLAB ;
 scalar_t__ UMA_SLAB_SPACE ;
 int UMA_ZFLAG_CACHEONLY ;
 int UMA_ZONE_CACHESPREAD ;
 int UMA_ZONE_HASH ;
 int UMA_ZONE_MALLOC ;
 int UMA_ZONE_MTXCLASS ;
 int UMA_ZONE_OFFPAGE ;
 int UMA_ZONE_PCPU ;
 int UMA_ZONE_VM ;
 int UMA_ZONE_VTOSLAB ;
 int UMA_ZONE_ZINIT ;
 scalar_t__ booted ;
 int bzero (TYPE_2__*,int) ;
 int hash_alloc (int *,int ) ;
 int keg_cachespread_init (TYPE_2__*) ;
 int keg_large_init (TYPE_2__*) ;
 int keg_small_init (TYPE_2__*) ;
 int page_alloc ;
 int page_free ;
 int pcpu_page_alloc ;
 int pcpu_page_free ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int * slabzone ;
 int startup_alloc ;
 int uk_link ;
 int uma_kegs ;
 int uma_rwlock ;
 int uma_small_alloc ;
 int uma_small_free ;
 int uz_link ;
 int zero_init ;

__attribute__((used)) static int
keg_ctor(void *mem, int size, void *udata, int flags)
{
 struct uma_kctor_args *arg = udata;
 uma_keg_t keg = mem;
 uma_zone_t zone;

 bzero(keg, size);
 keg->uk_size = arg->size;
 keg->uk_init = arg->uminit;
 keg->uk_fini = arg->fini;
 keg->uk_align = arg->align;
 keg->uk_free = 0;
 keg->uk_reserve = 0;
 keg->uk_pages = 0;
 keg->uk_flags = arg->flags;
 keg->uk_slabzone = ((void*)0);






 keg->uk_dr.dr_policy = DOMAINSET_RR();
 keg->uk_dr.dr_iter = 0;




 zone = arg->zone;
 keg->uk_name = zone->uz_name;

 if (arg->flags & UMA_ZONE_VM)
  keg->uk_flags |= UMA_ZFLAG_CACHEONLY;

 if (arg->flags & UMA_ZONE_ZINIT)
  keg->uk_init = zero_init;

 if (arg->flags & UMA_ZONE_MALLOC)
  keg->uk_flags |= UMA_ZONE_VTOSLAB;

 if (arg->flags & UMA_ZONE_PCPU)



  keg->uk_flags &= ~UMA_ZONE_PCPU;


 if (keg->uk_flags & UMA_ZONE_CACHESPREAD) {
  keg_cachespread_init(keg);
 } else {
  if (keg->uk_size > UMA_SLAB_SPACE)
   keg_large_init(keg);
  else
   keg_small_init(keg);
 }

 if (keg->uk_flags & UMA_ZONE_OFFPAGE)
  keg->uk_slabzone = slabzone;





 if (booted < BOOT_PAGEALLOC)
  keg->uk_allocf = startup_alloc;




 else if (keg->uk_flags & UMA_ZONE_PCPU)
  keg->uk_allocf = pcpu_page_alloc;
 else
  keg->uk_allocf = page_alloc;





 if (keg->uk_flags & UMA_ZONE_PCPU)
  keg->uk_freef = pcpu_page_free;
 else
  keg->uk_freef = page_free;




 KEG_LOCK_INIT(keg, (arg->flags & UMA_ZONE_MTXCLASS));






 if (!(keg->uk_flags & UMA_ZONE_OFFPAGE)) {
  keg->uk_pgoff = (PAGE_SIZE * keg->uk_ppera) - SIZEOF_UMA_SLAB;







  KASSERT(keg->uk_pgoff + sizeof(struct uma_slab) <=
      PAGE_SIZE * keg->uk_ppera,
      ("zone %s ipers %d rsize %d size %d slab won't fit",
      zone->uz_name, keg->uk_ipers, keg->uk_rsize, keg->uk_size));
 }

 if (keg->uk_flags & UMA_ZONE_HASH)
  hash_alloc(&keg->uk_hash, 0);

 CTR5(KTR_UMA, "keg_ctor %p zone %s(%p) out %d free %d\n",
     keg, zone->uz_name, zone,
     (keg->uk_pages / keg->uk_ppera) * keg->uk_ipers - keg->uk_free,
     keg->uk_free);

 LIST_INSERT_HEAD(&keg->uk_zones, zone, uz_link);

 rw_wlock(&uma_rwlock);
 LIST_INSERT_HEAD(&uma_kegs, keg, uk_link);
 rw_wunlock(&uma_rwlock);
 return (0);
}
