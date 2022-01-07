
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sge_timer_ch; } ;
typedef TYPE_1__ adapter_t ;


 int TX_RECLAIM_PERIOD ;
 int callout_reset (int *,int ,int ,TYPE_1__*) ;
 int sge_timer_cb ;

int
t3_sge_reset_adapter(adapter_t *sc)
{
 callout_reset(&sc->sge_timer_ch, TX_RECLAIM_PERIOD, sge_timer_cb, sc);
 return (0);
}
