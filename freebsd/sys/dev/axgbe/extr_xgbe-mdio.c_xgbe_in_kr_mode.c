
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 int XGBE_MODE_KR ;
 int xgbe_cur_mode (struct xgbe_prv_data*,int*) ;

__attribute__((used)) static bool xgbe_in_kr_mode(struct xgbe_prv_data *pdata)
{
 enum xgbe_mode mode;

 xgbe_cur_mode(pdata, &mode);

 return (mode == XGBE_MODE_KR);
}
