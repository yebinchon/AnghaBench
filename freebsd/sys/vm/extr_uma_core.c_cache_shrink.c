
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_5__ {int uz_flags; int uz_count; int uz_count_min; } ;


 int UMA_ZFLAG_INTERNAL ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;

__attribute__((used)) static void
cache_shrink(uma_zone_t zone)
{

 if (zone->uz_flags & UMA_ZFLAG_INTERNAL)
  return;

 ZONE_LOCK(zone);
 zone->uz_count = (zone->uz_count_min + zone->uz_count) / 2;
 ZONE_UNLOCK(zone);
}
