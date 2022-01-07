
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_channel {int dummy; } ;


 int DBGPR (char*,int) ;
 int xgbe_rx_poll (struct xgbe_channel*,int) ;
 int xgbe_tx_poll (struct xgbe_channel*) ;

__attribute__((used)) static int xgbe_one_poll(struct xgbe_channel *channel, int budget)
{
 int processed = 0;

 DBGPR("-->xgbe_one_poll: budget=%d\n", budget);


 xgbe_tx_poll(channel);


 processed = xgbe_rx_poll(channel, budget);

 DBGPR("<--xgbe_one_poll: received = %d\n", processed);

 return processed;
}
