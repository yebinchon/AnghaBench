
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_zone_domain_t ;
typedef TYPE_3__* uma_bucket_t ;
struct TYPE_12__ {scalar_t__ ub_cnt; } ;
struct TYPE_11__ {scalar_t__ uzd_nitems; scalar_t__ uzd_imin; int uzd_buckets; } ;
struct TYPE_10__ {int uz_bkt_count; } ;


 int MPASS (int) ;
 TYPE_3__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int ZONE_LOCK_ASSERT (TYPE_1__*) ;
 int ub_link ;

__attribute__((used)) static uma_bucket_t
zone_fetch_bucket(uma_zone_t zone, uma_zone_domain_t zdom)
{
 uma_bucket_t bucket;

 ZONE_LOCK_ASSERT(zone);

 if ((bucket = TAILQ_FIRST(&zdom->uzd_buckets)) != ((void*)0)) {
  MPASS(zdom->uzd_nitems >= bucket->ub_cnt);
  TAILQ_REMOVE(&zdom->uzd_buckets, bucket, ub_link);
  zdom->uzd_nitems -= bucket->ub_cnt;
  if (zdom->uzd_imin > zdom->uzd_nitems)
   zdom->uzd_imin = zdom->uzd_nitems;
  zone->uz_bkt_count -= bucket->ub_cnt;
 }
 return (bucket);
}
