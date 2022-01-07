
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_ring_desc {int desc3; int desc2; void* desc1; void* desc0; } ;
struct TYPE_2__ {int packets; int bytes; } ;
struct xgbe_ring_data {int mbuf_len; struct xgbe_ring_desc* rdesc; TYPE_1__ tx; int mbuf_data_paddr; } ;
struct xgbe_packet_data {int tx_packets; int length; int rdesc_count; int tx_bytes; int attributes; } ;
struct xgbe_ring {int cur; int coalesce_count; int rdesc_count; int rdesc_map; int rdesc_dmat; int mbuf_map; int mbuf_dmat; struct xgbe_packet_data packet_data; } ;
struct xgbe_prv_data {int tx_frames; } ;
struct xgbe_channel {int name; struct xgbe_ring* tx_ring; struct xgbe_prv_data* pdata; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CPC ;
 int CTXT ;
 int DBGPR (char*,...) ;
 int FD ;
 int FL ;
 int HL_B1L ;
 int IC ;
 int LD ;
 int OWN ;
 int PTP ;
 int TTSE ;
 int TX_NORMAL_DESC2 ;
 int TX_NORMAL_DESC3 ;
 int TX_PACKET_ATTRIBUTES ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,int) ;
 scalar_t__ XGMAC_GET_BITS (int ,int ,int ) ;
 int XGMAC_SET_BITS_LE (int ,int ,int ,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 void* cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int xgbe_tx_start_xmit (struct xgbe_channel*,struct xgbe_ring*) ;

__attribute__((used)) static void xgbe_dev_xmit(struct xgbe_channel *channel)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_ring *ring = channel->tx_ring;
 struct xgbe_ring_data *rdata;
 struct xgbe_ring_desc *rdesc;
 struct xgbe_packet_data *packet = &ring->packet_data;
 unsigned int tx_set_ic;
 int start_index = ring->cur;
 int cur_index = ring->cur;
 int i;

 DBGPR("-->xgbe_dev_xmit\n");
 ring->coalesce_count += packet->tx_packets;
 if (!pdata->tx_frames)
  tx_set_ic = 0;
 else if (packet->tx_packets > pdata->tx_frames)
  tx_set_ic = 1;
 else if ((ring->coalesce_count % pdata->tx_frames) <
   packet->tx_packets)
  tx_set_ic = 1;
 else
  tx_set_ic = 0;
 tx_set_ic = 1;

 rdata = XGBE_GET_DESC_DATA(ring, cur_index);
 rdesc = rdata->rdesc;


 rdesc->desc0 = cpu_to_le32(lower_32_bits(rdata->mbuf_data_paddr));
 rdesc->desc1 = cpu_to_le32(upper_32_bits(rdata->mbuf_data_paddr));


 XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, HL_B1L,
     rdata->mbuf_len);


 if (XGMAC_GET_BITS(packet->attributes, TX_PACKET_ATTRIBUTES, PTP))
  XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, TTSE, 1);


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, FD, 1);


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, CTXT, 0);


 if (cur_index != start_index)
  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, CPC, 0);


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, FL,
     packet->length);

 for (i = cur_index - start_index + 1; i < packet->rdesc_count; i++) {
  cur_index++;
  rdata = XGBE_GET_DESC_DATA(ring, cur_index);
  rdesc = rdata->rdesc;


  rdesc->desc0 = cpu_to_le32(lower_32_bits(rdata->mbuf_data_paddr));
  rdesc->desc1 = cpu_to_le32(upper_32_bits(rdata->mbuf_data_paddr));


  XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, HL_B1L,
      rdata->mbuf_len);


  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);


  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, CTXT, 0);
 }


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, LD, 1);


 if (tx_set_ic)
  XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, IC, 1);


 rdata->tx.packets = packet->tx_packets;
 rdata->tx.bytes = packet->tx_bytes;


 bus_dmamap_sync(ring->rdesc_dmat, ring->rdesc_map,
     BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(ring->mbuf_dmat, ring->mbuf_map,
     BUS_DMASYNC_PREWRITE);







 rdata = XGBE_GET_DESC_DATA(ring, start_index);
 rdesc = rdata->rdesc;
 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);


 bus_dmamap_sync(ring->rdesc_dmat, ring->rdesc_map,
     BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);

 ring->cur = cur_index + 1;
 xgbe_tx_start_xmit(channel, ring);

 DBGPR("  %s: descriptors %u to %u written\n",
       channel->name, start_index & (ring->rdesc_count - 1),
       (ring->cur - 1) & (ring->rdesc_count - 1));

 DBGPR("<--xgbe_dev_xmit\n");
}
