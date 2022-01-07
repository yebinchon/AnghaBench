
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* uma_zone_t ;
typedef int uma_fini ;
struct TYPE_7__ {int uz_fini; TYPE_1__* uz_keg; } ;
struct TYPE_6__ {scalar_t__ uk_pages; } ;


 int KASSERT (int,char*) ;
 int ZONE_LOCK (TYPE_2__*) ;
 int ZONE_UNLOCK (TYPE_2__*) ;

void
uma_zone_set_zfini(uma_zone_t zone, uma_fini zfini)
{

 ZONE_LOCK(zone);
 KASSERT(zone->uz_keg->uk_pages == 0,
     ("uma_zone_set_zfini on non-empty keg"));
 zone->uz_fini = zfini;
 ZONE_UNLOCK(zone);
}
