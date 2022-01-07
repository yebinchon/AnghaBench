
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int service_timer; int service_work; int dev_workqueue; } ;


 int DBGPR (char*) ;
 int callout_reset (int *,int ,void (*) (void*),struct xgbe_prv_data*) ;
 int hz ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void xgbe_service_timer(void *data)
{
 struct xgbe_prv_data *pdata = data;

 DBGPR("--> xgbe_service_timer\n");
 taskqueue_enqueue(pdata->dev_workqueue, &pdata->service_work);

 callout_reset(&pdata->service_timer, hz, xgbe_service_timer, pdata);
 DBGPR("<-- xgbe_service_timer\n");
}
