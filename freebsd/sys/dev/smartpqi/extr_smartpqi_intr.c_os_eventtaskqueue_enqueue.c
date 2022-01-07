
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event_task; } ;
struct TYPE_5__ {TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

void os_eventtaskqueue_enqueue(pqisrc_softstate_t *sc)
{
 taskqueue_enqueue(taskqueue_swi, &sc->os_specific.event_task);
}
