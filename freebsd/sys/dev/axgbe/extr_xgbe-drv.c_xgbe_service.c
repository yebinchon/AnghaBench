
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* phy_status ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {TYPE_1__ phy_if; } ;


 int stub1 (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_service(void *ctx, int pending)
{
 struct xgbe_prv_data *pdata = ctx;

 pdata->phy_if.phy_status(pdata);
}
