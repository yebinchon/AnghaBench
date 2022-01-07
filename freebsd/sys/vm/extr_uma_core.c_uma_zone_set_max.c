
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct uma_bucket_zone {int ubz_entries; } ;
struct TYPE_5__ {int uz_count_max; int uz_count; int uz_count_min; int uz_max_items; } ;


 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 struct uma_bucket_zone* bucket_zones ;
 int mp_ncpus ;

int
uma_zone_set_max(uma_zone_t zone, int nitems)
{
 struct uma_bucket_zone *ubz;





 ubz = &bucket_zones[0];
 for (; ubz->ubz_entries != 0; ubz++)
  if (ubz->ubz_entries * 2 * mp_ncpus > nitems)
   break;
 if (ubz == &bucket_zones[0])
  nitems = ubz->ubz_entries * 2 * mp_ncpus;
 else
  ubz--;

 ZONE_LOCK(zone);
 zone->uz_count_max = zone->uz_count = ubz->ubz_entries;
 if (zone->uz_count_min > zone->uz_count_max)
  zone->uz_count_min = zone->uz_count_max;
 zone->uz_max_items = nitems;
 ZONE_UNLOCK(zone);

 return (nitems);
}
