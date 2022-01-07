
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_rx_data {int data; } ;
struct qlnx_rx_queue {size_t sw_rx_cons; size_t sw_rx_prod; struct sw_rx_data* sw_rx_ring; int rx_bd_ring; } ;
struct eth_rx_bd {int dummy; } ;


 int RX_RING_SIZE ;
 struct eth_rx_bd* ecore_chain_consume (int *) ;
 struct eth_rx_bd* ecore_chain_produce (int *) ;
 int memcpy (struct eth_rx_bd*,struct eth_rx_bd*,int) ;

__attribute__((used)) static void
qlnx_reuse_rx_data(struct qlnx_rx_queue *rxq)
{
        struct eth_rx_bd *rx_bd_cons =
     ecore_chain_consume(&rxq->rx_bd_ring);
        struct eth_rx_bd *rx_bd_prod =
     ecore_chain_produce(&rxq->rx_bd_ring);
        struct sw_rx_data *sw_rx_data_cons =
     &rxq->sw_rx_ring[rxq->sw_rx_cons];
        struct sw_rx_data *sw_rx_data_prod =
     &rxq->sw_rx_ring[rxq->sw_rx_prod];

        sw_rx_data_prod->data = sw_rx_data_cons->data;
        memcpy(rx_bd_prod, rx_bd_cons, sizeof(struct eth_rx_bd));

        rxq->sw_rx_cons = (rxq->sw_rx_cons + 1) & (RX_RING_SIZE - 1);
        rxq->sw_rx_prod = (rxq->sw_rx_prod + 1) & (RX_RING_SIZE - 1);

 return;
}
