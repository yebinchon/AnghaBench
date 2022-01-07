
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uma_zone_t ;
typedef TYPE_1__* uma_keg_t ;
typedef int uma_init ;
struct TYPE_5__ {scalar_t__ uk_pages; int uk_init; } ;


 int KASSERT (int,char*) ;
 int KEG_GET (int ,TYPE_1__*) ;
 int KEG_LOCK (TYPE_1__*) ;
 int KEG_UNLOCK (TYPE_1__*) ;

void
uma_zone_set_init(uma_zone_t zone, uma_init uminit)
{
 uma_keg_t keg;

 KEG_GET(zone, keg);
 KEG_LOCK(keg);
 KASSERT(keg->uk_pages == 0,
     ("uma_zone_set_init on non-empty keg"));
 keg->uk_init = uminit;
 KEG_UNLOCK(keg);
}
