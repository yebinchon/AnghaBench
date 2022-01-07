
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int duplex; int speed; } ;
struct xgbe_prv_data {int speed_set; TYPE_1__ phy; } ;


 int DUPLEX_FULL ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;


 scalar_t__ xgbe_in_kr_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_status_force(struct xgbe_prv_data *pdata)
{
 if (xgbe_in_kr_mode(pdata)) {
  pdata->phy.speed = SPEED_10000;
 } else {
  switch (pdata->speed_set) {
  case 129:
   pdata->phy.speed = SPEED_1000;
   break;

  case 128:
   pdata->phy.speed = SPEED_2500;
   break;
  }
 }
 pdata->phy.duplex = DUPLEX_FULL;
}
