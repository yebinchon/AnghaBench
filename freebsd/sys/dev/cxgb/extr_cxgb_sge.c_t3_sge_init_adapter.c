
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int slow_intr_task; int sge_timer_ch; } ;
typedef TYPE_1__ adapter_t ;


 int TASK_INIT (int *,int ,int ,TYPE_1__*) ;
 int TX_RECLAIM_PERIOD ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,TYPE_1__*) ;
 int sge_slow_intr_handler ;
 int sge_timer_cb ;

int
t3_sge_init_adapter(adapter_t *sc)
{
 callout_init(&sc->sge_timer_ch, 1);
 callout_reset(&sc->sge_timer_ch, TX_RECLAIM_PERIOD, sge_timer_cb, sc);
 TASK_INIT(&sc->slow_intr_task, 0, sge_slow_intr_handler, sc);
 return (0);
}
