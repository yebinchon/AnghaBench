
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int cxgb_tick_ch; int tick_task; int tq; } ;
typedef TYPE_1__ adapter_t ;


 int CXGB_SHUTDOWN ;
 int callout_reset (int *,int ,void (*) (void*),TYPE_1__*) ;
 int hz ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
cxgb_tick(void *arg)
{
 adapter_t *sc = (adapter_t *)arg;

 if (sc->flags & CXGB_SHUTDOWN)
  return;

 taskqueue_enqueue(sc->tq, &sc->tick_task);
 callout_reset(&sc->cxgb_tick_ch, hz, cxgb_tick, sc);
}
