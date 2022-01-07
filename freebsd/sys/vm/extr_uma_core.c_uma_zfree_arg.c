
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_11__ ;


typedef int zone ;
typedef int vm_offset_t ;
typedef TYPE_1__* uma_zone_t ;
typedef int * uma_zone_domain_t ;
typedef TYPE_2__* uma_cache_t ;
typedef TYPE_3__* uma_bucket_t ;
struct TYPE_27__ {size_t ub_cnt; size_t ub_entries; int ** ub_bucket; } ;
struct TYPE_26__ {TYPE_3__* uc_freebucket; TYPE_3__* uc_crossbucket; int uc_frees; TYPE_3__* uc_allocbucket; } ;
struct TYPE_25__ {int uz_flags; scalar_t__ uz_ctor; scalar_t__ uz_sleepers; scalar_t__ uz_count; size_t uz_xdomain; scalar_t__ uz_bkt_count; scalar_t__ uz_bkt_max; scalar_t__ uz_count_max; TYPE_2__* uz_cpu; int uz_name; int * uz_domain; int uz_size; int (* uz_dtor ) (void*,int ,void*) ;int (* uz_fini ) (void*,int ) ;} ;
struct TYPE_24__ {scalar_t__ td_critnest; } ;


 int CTR2 (int ,char*,TYPE_11__*,int ) ;
 int CTR3 (int ,char*,int ,TYPE_1__*,TYPE_3__*) ;
 int KASSERT (int,char*) ;
 int KTR_UMA ;
 int M_NOWAIT ;
 int PCPU_GET (int) ;
 int RANDOM_UMA ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int SKIP_DTOR ;
 int UMA_ZONE_MALLOC ;
 int UMA_ZONE_NUMA ;
 int ZONE_LOCK (TYPE_1__*) ;
 scalar_t__ ZONE_TRYLOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int _vm_phys_domain (int ) ;
 TYPE_3__* bucket_alloc (TYPE_1__*,void*,int ) ;
 int bucket_drain (TYPE_1__*,TYPE_3__*) ;
 int bucket_free (TYPE_1__*,TYPE_3__*,void*) ;
 scalar_t__ bucketdisable ;
 int critical_enter () ;
 int critical_exit () ;
 int curcpu ;
 TYPE_11__* curthread ;
 scalar_t__ is_memguard_addr (void*) ;
 int memguard_free (void*) ;
 int pmap_kextract (int ) ;
 int random_harvest_fast_uma (TYPE_1__**,int,int ) ;
 int stub1 (void*,int ,void*) ;
 int stub2 (void*,int ) ;
 int stub3 (void*,int ,void*) ;
 scalar_t__ trash_ctor ;
 int trash_dtor (void*,int ,void*) ;
 int uma_dbg_free (TYPE_1__*,void*,void*) ;
 int uma_dbg_zskip (TYPE_1__*,void*) ;
 int vm_ndomains ;
 int zone_free_item (TYPE_1__*,void*,void*,int ) ;
 int zone_put_bucket (TYPE_1__*,int *,TYPE_3__*,int) ;

void
uma_zfree_arg(uma_zone_t zone, void *item, void *udata)
{
 uma_cache_t cache;
 uma_bucket_t bucket;
 uma_zone_domain_t zdom;
 int cpu, domain;



 bool lockfail;





 random_harvest_fast_uma(&zone, sizeof(zone), RANDOM_UMA);

 CTR2(KTR_UMA, "uma_zfree_arg thread %x zone %s", curthread,
     zone->uz_name);

 KASSERT(curthread->td_critnest == 0 || SCHEDULER_STOPPED(),
     ("uma_zfree_arg: called with spinlock or critical section held"));


        if (item == ((void*)0))
                return;
 if (zone->uz_dtor != ((void*)0))

  zone->uz_dtor(item, zone->uz_size, udata);





 if (zone->uz_sleepers > 0)
  goto zfree_item;
zfree_restart:
 critical_enter();
 cpu = curcpu;
 cache = &zone->uz_cpu[cpu];

zfree_start:
 domain = PCPU_GET(domain);
 {
  bucket = cache->uc_allocbucket;
  if (bucket == ((void*)0) || bucket->ub_cnt >= bucket->ub_entries)
   bucket = cache->uc_freebucket;
 }
 if (bucket != ((void*)0) && bucket->ub_cnt < bucket->ub_entries) {
  KASSERT(bucket->ub_bucket[bucket->ub_cnt] == ((void*)0),
      ("uma_zfree: Freeing to non free bucket index."));
  bucket->ub_bucket[bucket->ub_cnt] = item;
  bucket->ub_cnt++;
  cache->uc_frees++;
  critical_exit();
  return;
 }
 critical_exit();
 if (zone->uz_count == 0 || bucketdisable)
  goto zfree_item;

 lockfail = 0;
 if (ZONE_TRYLOCK(zone) == 0) {

  ZONE_LOCK(zone);
  lockfail = 1;
 }
 critical_enter();
 cpu = curcpu;
 domain = PCPU_GET(domain);
 cache = &zone->uz_cpu[cpu];






  bucket = cache->uc_freebucket;
 if (bucket != ((void*)0) && bucket->ub_cnt < bucket->ub_entries) {
  ZONE_UNLOCK(zone);
  goto zfree_start;
 }





  cache->uc_freebucket = ((void*)0);

 critical_exit();
 if ((zone->uz_flags & UMA_ZONE_NUMA) != 0) {
  zdom = &zone->uz_domain[domain];
 } else {
  domain = 0;
  zdom = &zone->uz_domain[0];
 }


 if (bucket != ((void*)0)) {
  CTR3(KTR_UMA,
      "uma_zfree: zone %s(%p) putting bucket %p on free list",
      zone->uz_name, zone, bucket);

  KASSERT(bucket->ub_cnt == bucket->ub_entries,
      ("uma_zfree: Attempting to insert not full bucket onto the full list.\n"));
  if (zone->uz_bkt_count >= zone->uz_bkt_max) {
   ZONE_UNLOCK(zone);
   bucket_drain(zone, bucket);
   bucket_free(zone, bucket, udata);
   goto zfree_restart;
  } else
   zone_put_bucket(zone, zdom, bucket, 1);
 }





 if (lockfail && zone->uz_count < zone->uz_count_max)
  zone->uz_count++;
 ZONE_UNLOCK(zone);

 bucket = bucket_alloc(zone, udata, M_NOWAIT);
 CTR3(KTR_UMA, "uma_zfree: zone %s(%p) allocated bucket %p",
     zone->uz_name, zone, bucket);
 if (bucket) {
  critical_enter();
  cpu = curcpu;
  cache = &zone->uz_cpu[cpu];
  if (cache->uc_freebucket == ((void*)0) &&
      ((zone->uz_flags & UMA_ZONE_NUMA) == 0 ||
      domain == PCPU_GET(domain))) {
   cache->uc_freebucket = bucket;
   goto zfree_start;
  }




  critical_exit();
  bucket_free(zone, bucket, udata);
  goto zfree_restart;
 }




zfree_item:
 zone_free_item(zone, item, udata, SKIP_DTOR);
}
