
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_mutex; int dev_state; } ;


 int XGBE_LINK_ERR ;
 int __xgbe_phy_config_aneg (struct xgbe_prv_data*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static int xgbe_phy_config_aneg(struct xgbe_prv_data *pdata)
{
 int ret;

 sx_xlock(&pdata->an_mutex);

 ret = __xgbe_phy_config_aneg(pdata);
 if (ret)
  set_bit(XGBE_LINK_ERR, &pdata->dev_state);
 else
  clear_bit(XGBE_LINK_ERR, &pdata->dev_state);

 sx_unlock(&pdata->an_mutex);

 return ret;
}
