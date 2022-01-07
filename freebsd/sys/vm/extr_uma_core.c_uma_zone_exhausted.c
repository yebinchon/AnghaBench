
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_5__ {scalar_t__ uz_sleepers; } ;


 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;

int
uma_zone_exhausted(uma_zone_t zone)
{
 int full;

 ZONE_LOCK(zone);
 full = zone->uz_sleepers > 0;
 ZONE_UNLOCK(zone);
 return (full);
}
