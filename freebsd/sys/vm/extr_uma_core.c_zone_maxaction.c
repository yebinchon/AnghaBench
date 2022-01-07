
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_5__ {int * ta_func; } ;
struct TYPE_4__ {TYPE_3__ uz_maxaction; } ;


 int taskqueue_enqueue (int ,TYPE_3__*) ;
 int taskqueue_thread ;

__attribute__((used)) static inline void
zone_maxaction(uma_zone_t zone)
{

 if (zone->uz_maxaction.ta_func != ((void*)0))
  taskqueue_enqueue(taskqueue_thread, &zone->uz_maxaction);
}
