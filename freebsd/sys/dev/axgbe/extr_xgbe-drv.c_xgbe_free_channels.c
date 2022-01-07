
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {scalar_t__ channel_count; TYPE_1__* channel; } ;
struct TYPE_2__ {struct TYPE_2__* tx_ring; struct TYPE_2__* rx_ring; } ;


 int M_AXGBE ;
 int free (TYPE_1__*,int ) ;

__attribute__((used)) static void xgbe_free_channels(struct xgbe_prv_data *pdata)
{
 if (!pdata->channel)
  return;

 free(pdata->channel->rx_ring, M_AXGBE);
 free(pdata->channel->tx_ring, M_AXGBE);
 free(pdata->channel, M_AXGBE);

 pdata->channel = ((void*)0);
 pdata->channel_count = 0;
}
