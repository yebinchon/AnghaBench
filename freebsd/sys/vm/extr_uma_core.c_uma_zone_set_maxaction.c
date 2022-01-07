
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef scalar_t__ uma_maxaction_t ;
typedef int task_fn_t ;
struct TYPE_6__ {int uz_maxaction; } ;


 int TASK_INIT (int *,int ,int *,TYPE_1__*) ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;

void
uma_zone_set_maxaction(uma_zone_t zone, uma_maxaction_t maxaction)
{

 ZONE_LOCK(zone);
 TASK_INIT(&zone->uz_maxaction, 0, (task_fn_t *)maxaction, zone);
 ZONE_UNLOCK(zone);
}
