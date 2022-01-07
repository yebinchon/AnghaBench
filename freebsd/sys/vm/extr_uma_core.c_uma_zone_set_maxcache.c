
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_5__ {int uz_bkt_max; } ;


 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;

int
uma_zone_set_maxcache(uma_zone_t zone, int nitems)
{

 ZONE_LOCK(zone);
 zone->uz_bkt_max = nitems;
 ZONE_UNLOCK(zone);

 return (nitems);
}
