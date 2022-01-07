
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_5__ {int uz_max_items; } ;


 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;

int
uma_zone_get_max(uma_zone_t zone)
{
 int nitems;

 ZONE_LOCK(zone);
 nitems = zone->uz_max_items;
 ZONE_UNLOCK(zone);

 return (nitems);
}
