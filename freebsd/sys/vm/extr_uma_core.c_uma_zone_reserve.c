
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uma_zone_t ;
typedef TYPE_1__* uma_keg_t ;
struct TYPE_5__ {int uk_reserve; } ;


 int KEG_GET (int ,TYPE_1__*) ;
 int KEG_LOCK (TYPE_1__*) ;
 int KEG_UNLOCK (TYPE_1__*) ;

void
uma_zone_reserve(uma_zone_t zone, int items)
{
 uma_keg_t keg;

 KEG_GET(zone, keg);
 KEG_LOCK(keg);
 keg->uk_reserve = items;
 KEG_UNLOCK(keg);
}
