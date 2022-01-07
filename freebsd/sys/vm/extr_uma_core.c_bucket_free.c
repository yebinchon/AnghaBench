
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_bucket_t ;
struct uma_bucket_zone {int ubz_zone; } ;
struct TYPE_7__ {scalar_t__ ub_cnt; int ub_entries; } ;
struct TYPE_6__ {int uz_flags; } ;


 int KASSERT (int,char*) ;
 int UMA_ZFLAG_BUCKET ;
 struct uma_bucket_zone* bucket_zone_lookup (int ) ;
 int uma_zfree_arg (int ,TYPE_2__*,void*) ;

__attribute__((used)) static void
bucket_free(uma_zone_t zone, uma_bucket_t bucket, void *udata)
{
 struct uma_bucket_zone *ubz;

 KASSERT(bucket->ub_cnt == 0,
     ("bucket_free: Freeing a non free bucket."));
 if ((zone->uz_flags & UMA_ZFLAG_BUCKET) == 0)
  udata = (void *)(uintptr_t)zone->uz_flags;
 ubz = bucket_zone_lookup(bucket->ub_entries);
 uma_zfree_arg(ubz->ubz_zone, bucket, udata);
}
