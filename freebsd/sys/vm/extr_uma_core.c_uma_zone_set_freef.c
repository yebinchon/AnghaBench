
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uma_zone_t ;
typedef TYPE_1__* uma_keg_t ;
typedef int uma_free ;
struct TYPE_5__ {int uk_freef; } ;


 int KASSERT (int ,char*) ;
 int KEG_GET (int ,TYPE_1__*) ;
 int KEG_LOCK (TYPE_1__*) ;
 int KEG_UNLOCK (TYPE_1__*) ;

void
uma_zone_set_freef(uma_zone_t zone, uma_free freef)
{
 uma_keg_t keg;

 KEG_GET(zone, keg);
 KASSERT(keg != ((void*)0), ("uma_zone_set_freef: Invalid zone type"));
 KEG_LOCK(keg);
 keg->uk_freef = freef;
 KEG_UNLOCK(keg);
}
