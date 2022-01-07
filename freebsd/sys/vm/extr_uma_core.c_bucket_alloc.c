
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_bucket_t ;
struct uma_bucket_zone {scalar_t__ ubz_entries; TYPE_1__* ubz_zone; } ;
struct TYPE_8__ {int ub_entries; scalar_t__ ub_cnt; int ub_bucket; } ;
struct TYPE_7__ {uintptr_t uz_flags; int uz_count; } ;


 int M_NOVM ;
 uintptr_t UMA_ZFLAG_BUCKET ;
 uintptr_t UMA_ZFLAG_CACHEONLY ;
 struct uma_bucket_zone* bucket_zone_lookup (int ) ;
 scalar_t__ bucketdisable ;
 int bzero (int ,int) ;
 TYPE_2__* uma_zalloc_arg (TYPE_1__*,void*,int) ;

__attribute__((used)) static uma_bucket_t
bucket_alloc(uma_zone_t zone, void *udata, int flags)
{
 struct uma_bucket_zone *ubz;
 uma_bucket_t bucket;







 if (bucketdisable)
  return (((void*)0));
 if ((zone->uz_flags & UMA_ZFLAG_BUCKET) == 0)
  udata = (void *)(uintptr_t)zone->uz_flags;
 else {
  if ((uintptr_t)udata & UMA_ZFLAG_BUCKET)
   return (((void*)0));
  udata = (void *)((uintptr_t)udata | UMA_ZFLAG_BUCKET);
 }
 if ((uintptr_t)udata & UMA_ZFLAG_CACHEONLY)
  flags |= M_NOVM;
 ubz = bucket_zone_lookup(zone->uz_count);
 if (ubz->ubz_zone == zone && (ubz + 1)->ubz_entries != 0)
  ubz++;
 bucket = uma_zalloc_arg(ubz->ubz_zone, udata, flags);
 if (bucket) {



  bucket->ub_cnt = 0;
  bucket->ub_entries = ubz->ubz_entries;
 }

 return (bucket);
}
