
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_5__ {char const* uz_warning; } ;


 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;

void
uma_zone_set_warning(uma_zone_t zone, const char *warning)
{

 ZONE_LOCK(zone);
 zone->uz_warning = warning;
 ZONE_UNLOCK(zone);
}
