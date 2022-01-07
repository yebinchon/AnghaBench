
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int service_timer; } ;


 int callout_drain (int *) ;

__attribute__((used)) static void xgbe_stop_timers(struct xgbe_prv_data *pdata)
{

 callout_drain(&pdata->service_timer);
}
