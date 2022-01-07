
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_cache_t ;
typedef TYPE_3__* uma_bucket_t ;
struct TYPE_15__ {scalar_t__ ub_cnt; } ;
struct TYPE_14__ {TYPE_3__* uc_crossbucket; TYPE_3__* uc_freebucket; TYPE_3__* uc_allocbucket; } ;
struct TYPE_13__ {int uz_flags; int * uz_domain; TYPE_2__* uz_cpu; } ;


 int PCPU_GET (int) ;
 int UMA_ZFLAG_INTERNAL ;
 int UMA_ZONE_NUMA ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int bucket_drain (TYPE_1__*,TYPE_3__*) ;
 int bucket_free (TYPE_1__*,TYPE_3__*,int *) ;
 int critical_enter () ;
 int critical_exit () ;
 size_t curcpu ;
 int zone_put_bucket (TYPE_1__*,int *,TYPE_3__*,int) ;

__attribute__((used)) static void
cache_drain_safe_cpu(uma_zone_t zone)
{
 uma_cache_t cache;
 uma_bucket_t b1, b2, b3;
 int domain;

 if (zone->uz_flags & UMA_ZFLAG_INTERNAL)
  return;

 b1 = b2 = b3 = ((void*)0);
 ZONE_LOCK(zone);
 critical_enter();
 if (zone->uz_flags & UMA_ZONE_NUMA)
  domain = PCPU_GET(domain);
 else
  domain = 0;
 cache = &zone->uz_cpu[curcpu];
 if (cache->uc_allocbucket) {
  if (cache->uc_allocbucket->ub_cnt != 0)
   zone_put_bucket(zone, &zone->uz_domain[domain],
       cache->uc_allocbucket, 0);
  else
   b1 = cache->uc_allocbucket;
  cache->uc_allocbucket = ((void*)0);
 }
 if (cache->uc_freebucket) {
  if (cache->uc_freebucket->ub_cnt != 0)
   zone_put_bucket(zone, &zone->uz_domain[domain],
       cache->uc_freebucket, 0);
  else
   b2 = cache->uc_freebucket;
  cache->uc_freebucket = ((void*)0);
 }
 b3 = cache->uc_crossbucket;
 cache->uc_crossbucket = ((void*)0);
 critical_exit();
 ZONE_UNLOCK(zone);
 if (b1)
  bucket_free(zone, b1, ((void*)0));
 if (b2)
  bucket_free(zone, b2, ((void*)0));
 if (b3) {
  bucket_drain(zone, b3);
  bucket_free(zone, b3, ((void*)0));
 }
}
