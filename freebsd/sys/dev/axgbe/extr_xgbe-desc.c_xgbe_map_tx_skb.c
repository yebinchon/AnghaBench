
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_data {int mbuf_free; struct mbuf* mb; } ;
struct xgbe_packet_data {unsigned int rdesc_count; scalar_t__ length; } ;
struct xgbe_ring {unsigned int cur; int mbuf_map; int mbuf_dmat; struct xgbe_packet_data packet_data; } ;
struct xgbe_map_tx_skb_data {unsigned int cur_index; struct xgbe_packet_data* packet; struct xgbe_ring* ring; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; } ;
struct mbuf {int dummy; } ;


 int BUS_DMA_NOWAIT ;
 int DBGPR (char*,unsigned int) ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,unsigned int) ;
 int bus_dmamap_load_mbuf (int ,int ,struct mbuf*,int ,struct xgbe_map_tx_skb_data*,int ) ;
 int xgbe_map_tx_skb_cb ;

__attribute__((used)) static int xgbe_map_tx_skb(struct xgbe_channel *channel, struct mbuf *m)
{
 struct xgbe_ring *ring = channel->tx_ring;
 struct xgbe_map_tx_skb_data cbdata;
 struct xgbe_ring_data *rdata;
 struct xgbe_packet_data *packet;
 unsigned int start_index, cur_index;
 int err;

 DBGPR("-->xgbe_map_tx_skb: cur = %d\n", ring->cur);

 start_index = ring->cur;
 cur_index = ring->cur;

 packet = &ring->packet_data;
 packet->rdesc_count = 0;
 packet->length = 0;

 cbdata.ring = ring;
 cbdata.packet = packet;
 cbdata.cur_index = cur_index;

 err = bus_dmamap_load_mbuf(ring->mbuf_dmat, ring->mbuf_map, m,
     xgbe_map_tx_skb_cb, &cbdata, BUS_DMA_NOWAIT);
 if (err != 0)
  return (-err);

 cur_index = cbdata.cur_index;





 rdata = XGBE_GET_DESC_DATA(ring, cur_index - 1);
 rdata->mb = m;
 rdata->mbuf_free = 1;


 packet->rdesc_count = cur_index - start_index;

 DBGPR("<--xgbe_map_tx_skb: count=%u\n", packet->rdesc_count);

 return packet->rdesc_count;
}
