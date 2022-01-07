
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_restart_dev (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_restart(void *ctx, int pending)
{
 struct xgbe_prv_data *pdata = ctx;

 xgbe_restart_dev(pdata);
}
