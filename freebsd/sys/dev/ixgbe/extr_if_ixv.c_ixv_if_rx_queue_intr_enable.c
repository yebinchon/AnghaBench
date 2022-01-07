
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_2__ {int me; } ;
struct ix_rx_queue {TYPE_1__ rxr; } ;
struct adapter {struct ix_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;


 struct adapter* iflib_get_softc (int ) ;
 int ixv_enable_queue (struct adapter*,int ) ;

__attribute__((used)) static int
ixv_if_rx_queue_intr_enable(if_ctx_t ctx, uint16_t rxqid)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ix_rx_queue *que = &adapter->rx_queues[rxqid];

 ixv_enable_queue(adapter, que->rxr.me);

 return (0);
}
