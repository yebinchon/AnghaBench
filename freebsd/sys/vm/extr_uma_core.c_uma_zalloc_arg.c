
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_22__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef int zone ;
typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_zone_domain_t ;
typedef TYPE_3__* uma_cache_t ;
typedef TYPE_4__* uma_bucket_t ;
struct TYPE_39__ {size_t ub_cnt; int ** ub_bucket; } ;
struct TYPE_38__ {TYPE_4__* uc_allocbucket; TYPE_4__* uc_freebucket; int uc_allocs; } ;
struct TYPE_37__ {int uzd_imax; } ;
struct TYPE_36__ {scalar_t__ td_critnest; } ;
struct TYPE_35__ {int uz_flags; scalar_t__ (* uz_init ) (void*,int ,int) ;scalar_t__ (* uz_ctor ) (void*,int ,void*,int) ;scalar_t__ uz_dtor; int uz_count; int uz_count_max; scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; scalar_t__ uz_bkt_count; scalar_t__ uz_bkt_max; TYPE_3__* uz_cpu; int uz_name; TYPE_2__* uz_domain; int uz_fails; int uz_size; int (* uz_fini ) (void*,int ) ;} ;


 int CTR2 (int ,char*,int ,TYPE_1__*) ;
 int CTR3 (int ,char*,int ,TYPE_1__*,TYPE_4__*) ;
 int CTR4 (int ,char*,TYPE_22__*,int ,TYPE_1__*,int) ;
 int KASSERT (int,char*) ;
 int KTR_UMA ;
 int MIN (int,scalar_t__) ;
 int MPASS (int) ;
 int M_EXEC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCPU_GET (int) ;
 int RANDOM_UMA ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int SKIP_CNT ;
 int SKIP_DTOR ;
 int UMA_ANYDOMAIN ;
 int UMA_ZONE_NUMA ;
 int UMA_ZONE_PCPU ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*,int ) ;
 int ZONE_LOCK (TYPE_1__*) ;
 scalar_t__ ZONE_TRYLOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int bucket_drain (TYPE_1__*,TYPE_4__*) ;
 int bucket_free (TYPE_1__*,TYPE_4__*,void*) ;
 scalar_t__ bucketdisable ;
 int counter_u64_add (int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int curcpu ;
 TYPE_22__* curthread ;
 void* memguard_alloc (int ,int) ;
 scalar_t__ memguard_cmp_zone (TYPE_1__*) ;
 int random_harvest_fast_uma (TYPE_1__**,int,int ) ;
 scalar_t__ stub1 (void*,int ,int) ;
 scalar_t__ stub2 (void*,int ,void*,int) ;
 int stub3 (void*,int ) ;
 scalar_t__ stub4 (void*,int ,void*,int) ;
 scalar_t__ trash_ctor (void*,int ,void*,int) ;
 scalar_t__ trash_dtor ;
 int uma_dbg_alloc (TYPE_1__*,int *,void*) ;
 int uma_dbg_zskip (TYPE_1__*,void*) ;
 int uma_zero_item (void*,TYPE_1__*) ;
 int wakeup_one (TYPE_1__*) ;
 TYPE_4__* zone_alloc_bucket (TYPE_1__*,void*,int,int,int) ;
 void* zone_alloc_item_locked (TYPE_1__*,void*,int,int) ;
 TYPE_4__* zone_fetch_bucket (TYPE_1__*,TYPE_2__*) ;
 int zone_free_item (TYPE_1__*,void*,void*,int) ;
 int zone_put_bucket (TYPE_1__*,TYPE_2__*,TYPE_4__*,int) ;

void *
uma_zalloc_arg(uma_zone_t zone, void *udata, int flags)
{
 uma_zone_domain_t zdom;
 uma_bucket_t bucket;
 uma_cache_t cache;
 void *item;
 int cpu, domain, lockfail, maxbucket;





 random_harvest_fast_uma(&zone, sizeof(zone), RANDOM_UMA);


 CTR4(KTR_UMA, "uma_zalloc_arg thread %x zone %s(%p) flags %d",
     curthread, zone->uz_name, zone, flags);

 if (flags & M_WAITOK) {
  WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
      "uma_zalloc_arg: zone \"%s\"", zone->uz_name);
 }
 KASSERT((flags & M_EXEC) == 0, ("uma_zalloc_arg: called with M_EXEC"));
 KASSERT(curthread->td_critnest == 0 || SCHEDULER_STOPPED(),
     ("uma_zalloc_arg: called with spinlock or critical section held"));
 if (zone->uz_flags & UMA_ZONE_PCPU)
  KASSERT((flags & M_ZERO) == 0, ("allocating from a pcpu zone "
      "with M_ZERO passed"));
zalloc_restart:
 critical_enter();
 cpu = curcpu;
 cache = &zone->uz_cpu[cpu];

zalloc_start:
 bucket = cache->uc_allocbucket;
 if (bucket != ((void*)0) && bucket->ub_cnt > 0) {
  bucket->ub_cnt--;
  item = bucket->ub_bucket[bucket->ub_cnt];



  KASSERT(item != ((void*)0), ("uma_zalloc: Bucket pointer mangled."));
  cache->uc_allocs++;
  critical_exit();



  if (zone->uz_ctor != ((void*)0) &&




      zone->uz_ctor(item, zone->uz_size, udata, flags) != 0) {
   counter_u64_add(zone->uz_fails, 1);
   zone_free_item(zone, item, udata, SKIP_DTOR | SKIP_CNT);
   return (((void*)0));
  }




  if (flags & M_ZERO)
   uma_zero_item(item, zone);
  return (item);
 }





 bucket = cache->uc_freebucket;
 if (bucket != ((void*)0) && bucket->ub_cnt > 0) {
  CTR2(KTR_UMA,
      "uma_zalloc: zone %s(%p) swapping empty with alloc",
      zone->uz_name, zone);
  cache->uc_freebucket = cache->uc_allocbucket;
  cache->uc_allocbucket = bucket;
  goto zalloc_start;
 }




 bucket = cache->uc_allocbucket;
 cache->uc_allocbucket = ((void*)0);
 critical_exit();
 if (bucket != ((void*)0))
  bucket_free(zone, bucket, udata);


 if (zone->uz_count == 0 || bucketdisable) {
  ZONE_LOCK(zone);
  if (zone->uz_flags & UMA_ZONE_NUMA)
   domain = PCPU_GET(domain);
  else
   domain = UMA_ANYDOMAIN;
  goto zalloc_item;
 }
 lockfail = 0;
 if (ZONE_TRYLOCK(zone) == 0) {

  ZONE_LOCK(zone);
  lockfail = 1;
 }
 critical_enter();
 cpu = curcpu;
 cache = &zone->uz_cpu[cpu];


 if (cache->uc_allocbucket != ((void*)0)) {
  ZONE_UNLOCK(zone);
  goto zalloc_start;
 }




 if (zone->uz_flags & UMA_ZONE_NUMA) {
  domain = PCPU_GET(domain);
  zdom = &zone->uz_domain[domain];
 } else {
  domain = UMA_ANYDOMAIN;
  zdom = &zone->uz_domain[0];
 }

 if ((bucket = zone_fetch_bucket(zone, zdom)) != ((void*)0)) {
  KASSERT(bucket->ub_cnt != 0,
      ("uma_zalloc_arg: Returning an empty bucket."));
  cache->uc_allocbucket = bucket;
  ZONE_UNLOCK(zone);
  goto zalloc_start;
 }

 critical_exit();





 if (lockfail && zone->uz_count < zone->uz_count_max)
  zone->uz_count++;

 if (zone->uz_max_items > 0) {
  if (zone->uz_items >= zone->uz_max_items)
   goto zalloc_item;
  maxbucket = MIN(zone->uz_count,
      zone->uz_max_items - zone->uz_items);
  zone->uz_items += maxbucket;
 } else
  maxbucket = zone->uz_count;
 ZONE_UNLOCK(zone);






 bucket = zone_alloc_bucket(zone, udata, domain, flags, maxbucket);
 CTR3(KTR_UMA, "uma_zalloc: zone %s(%p) bucket zone returned %p",
     zone->uz_name, zone, bucket);
 ZONE_LOCK(zone);
 if (bucket != ((void*)0)) {
  if (zone->uz_max_items > 0 && bucket->ub_cnt < maxbucket) {
   MPASS(zone->uz_items >= maxbucket - bucket->ub_cnt);
   zone->uz_items -= maxbucket - bucket->ub_cnt;
   if (zone->uz_sleepers > 0 &&
       zone->uz_items < zone->uz_max_items)
    wakeup_one(zone);
  }
  critical_enter();
  cpu = curcpu;
  cache = &zone->uz_cpu[cpu];






  if (cache->uc_allocbucket == ((void*)0) &&
      ((zone->uz_flags & UMA_ZONE_NUMA) == 0 ||
      domain == PCPU_GET(domain))) {
   cache->uc_allocbucket = bucket;
   zdom->uzd_imax += bucket->ub_cnt;
  } else if (zone->uz_bkt_count >= zone->uz_bkt_max) {
   critical_exit();
   ZONE_UNLOCK(zone);
   bucket_drain(zone, bucket);
   bucket_free(zone, bucket, udata);
   goto zalloc_restart;
  } else
   zone_put_bucket(zone, zdom, bucket, 0);
  ZONE_UNLOCK(zone);
  goto zalloc_start;
 } else if (zone->uz_max_items > 0) {
  zone->uz_items -= maxbucket;
  if (zone->uz_sleepers > 0 &&
      zone->uz_items + 1 < zone->uz_max_items)
   wakeup_one(zone);
 }




zalloc_item:
 item = zone_alloc_item_locked(zone, udata, domain, flags);

 return (item);
}
