
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 int xgbe_cur_mode (struct xgbe_prv_data*,int*) ;
 int xgbe_switch_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_set_mode(struct xgbe_prv_data *pdata,
     enum xgbe_mode mode)
{
 enum xgbe_mode cur_mode;

 xgbe_cur_mode(pdata, &cur_mode);
 if (mode != cur_mode)
  xgbe_switch_mode(pdata);
}
