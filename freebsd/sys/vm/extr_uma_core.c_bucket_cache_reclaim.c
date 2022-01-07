
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_zone_domain_t ;
typedef TYPE_3__* uma_bucket_t ;
struct TYPE_15__ {long ub_cnt; } ;
struct TYPE_14__ {long uzd_nitems; scalar_t__ uzd_imin; scalar_t__ uzd_imax; int uzd_buckets; int uzd_wss; } ;
struct TYPE_13__ {scalar_t__ uz_count; scalar_t__ uz_count_min; TYPE_2__* uz_domain; } ;


 TYPE_3__* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int bucket_drain (TYPE_1__*,TYPE_3__*) ;
 int bucket_free (TYPE_1__*,TYPE_3__*,int *) ;
 long lmax (int ,scalar_t__) ;
 scalar_t__ lmin (scalar_t__,long) ;
 int ub_link ;
 int uma_bucketlist ;
 int vm_ndomains ;

__attribute__((used)) static void
bucket_cache_reclaim(uma_zone_t zone, bool drain)
{
 uma_zone_domain_t zdom;
 uma_bucket_t bucket;
 long target, tofree;
 int i;

 for (i = 0; i < vm_ndomains; i++) {
  zdom = &zone->uz_domain[i];
  target = drain ? 0 : lmax(zdom->uzd_wss, zdom->uzd_nitems -
      zdom->uzd_imin);
  while (zdom->uzd_nitems > target) {
   bucket = TAILQ_LAST(&zdom->uzd_buckets, uma_bucketlist);
   if (bucket == ((void*)0))
    break;
   tofree = bucket->ub_cnt;
   TAILQ_REMOVE(&zdom->uzd_buckets, bucket, ub_link);
   zdom->uzd_nitems -= tofree;





   zdom->uzd_imax -= lmin(zdom->uzd_imax, tofree);
   zdom->uzd_imin -= lmin(zdom->uzd_imin, tofree);

   ZONE_UNLOCK(zone);
   bucket_drain(zone, bucket);
   bucket_free(zone, bucket, ((void*)0));
   ZONE_LOCK(zone);
  }
 }





 if (zone->uz_count > zone->uz_count_min)
  zone->uz_count--;
}
