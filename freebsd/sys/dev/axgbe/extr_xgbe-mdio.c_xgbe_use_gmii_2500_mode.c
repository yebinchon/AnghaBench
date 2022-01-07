
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ autoneg; int advertising; scalar_t__ speed; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;


 int ADVERTISED_2500baseX_Full ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ SPEED_2500 ;

__attribute__((used)) static bool xgbe_use_gmii_2500_mode(struct xgbe_prv_data *pdata)
{
 if (pdata->phy.autoneg == AUTONEG_ENABLE) {
  if (pdata->phy.advertising & ADVERTISED_2500baseX_Full)
   return 1;
 } else {
  if (pdata->phy.speed == SPEED_2500)
   return 1;
 }

 return 0;
}
