
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int service_timer; } ;


 int callout_reset (int *,int ,int ,struct xgbe_prv_data*) ;
 int hz ;
 int xgbe_service_timer ;

__attribute__((used)) static void xgbe_start_timers(struct xgbe_prv_data *pdata)
{
 callout_reset(&pdata->service_timer, hz, xgbe_service_timer, pdata);
}
