
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; scalar_t__ duplex; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;


 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;



 int XGBE_MODE_KR ;
 int XGBE_MODE_KX ;
 int xgbe_disable_an (struct xgbe_prv_data*) ;
 int xgbe_set_mode (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static int xgbe_phy_config_fixed(struct xgbe_prv_data *pdata)
{


 xgbe_disable_an(pdata);


 switch (pdata->phy.speed) {
 case 129:
  xgbe_set_mode(pdata, XGBE_MODE_KR);
  break;

 case 128:
 case 130:
  xgbe_set_mode(pdata, XGBE_MODE_KX);
  break;

 default:
  return -EINVAL;
 }


 if (pdata->phy.duplex != DUPLEX_FULL)
  return -EINVAL;

 return 0;
}
