
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int rx_ring_count; unsigned int channel_count; struct xgbe_channel* channel; } ;
struct xgbe_channel {int dummy; } ;


 int DBGPR (char*,int) ;
 scalar_t__ xgbe_rx_poll (struct xgbe_channel*,int) ;
 int xgbe_tx_poll (struct xgbe_channel*) ;

__attribute__((used)) static int xgbe_all_poll(struct xgbe_prv_data *pdata, int budget)
{
 struct xgbe_channel *channel;
 int ring_budget;
 int processed, last_processed;
 unsigned int i;

 DBGPR("-->xgbe_all_poll: budget=%d\n", budget);

 processed = 0;
 ring_budget = budget / pdata->rx_ring_count;
 do {
  last_processed = processed;

  channel = pdata->channel;
  for (i = 0; i < pdata->channel_count; i++, channel++) {

   xgbe_tx_poll(channel);


   if (ring_budget > (budget - processed))
    ring_budget = budget - processed;
   processed += xgbe_rx_poll(channel, ring_budget);
  }
 } while ((processed < budget) && (processed != last_processed));

 DBGPR("<--xgbe_all_poll: received = %d\n", processed);

 return processed;
}
