
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_set_an (struct xgbe_prv_data*,int,int) ;

__attribute__((used)) static void xgbe_disable_an(struct xgbe_prv_data *pdata)
{
 xgbe_set_an(pdata, 0, 0);
}
