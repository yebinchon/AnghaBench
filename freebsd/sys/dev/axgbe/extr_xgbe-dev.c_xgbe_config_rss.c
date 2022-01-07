
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rss; } ;
struct xgbe_prv_data {TYPE_1__ hw_feat; } ;


 int xgbe_disable_rss (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_rss(struct xgbe_prv_data *pdata)
{

 if (!pdata->hw_feat.rss)
  return;

 xgbe_disable_rss(pdata);
}
