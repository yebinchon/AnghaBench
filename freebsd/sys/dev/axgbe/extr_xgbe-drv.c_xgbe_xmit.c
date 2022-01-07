
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_packet_data {int rdesc_count; } ;
struct xgbe_ring {struct xgbe_packet_data packet_data; } ;
struct TYPE_2__ {int link; } ;
struct xgbe_desc_if {int (* map_tx_skb ) (struct xgbe_channel*,struct mbuf*) ;} ;
struct xgbe_hw_if {int (* dev_xmit ) (struct xgbe_channel*) ;} ;
struct xgbe_prv_data {struct xgbe_channel* channel; TYPE_1__ phy; int dev_state; struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; } ;
struct mbuf {int * m_nextpkt; } ;
struct ifnet {struct xgbe_prv_data* if_softc; } ;


 int ENETDOWN ;
 int MPASS (int ) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int XGBE_DOWN ;
 scalar_t__ __predict_false (int) ;
 int m_free (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int memset (struct xgbe_packet_data*,int ,int) ;
 int stub1 (struct xgbe_channel*,struct mbuf*) ;
 int stub2 (struct xgbe_channel*) ;
 scalar_t__ test_bit (int ,int *) ;
 int xgbe_maybe_stop_tx_queue (struct xgbe_channel*,struct xgbe_ring*,int ) ;
 int xgbe_packet_info (struct xgbe_prv_data*,struct xgbe_ring*,struct mbuf*,struct xgbe_packet_data*) ;

int xgbe_xmit(struct ifnet *ifp, struct mbuf *m)
{
 struct xgbe_prv_data *pdata = ifp->if_softc;
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_desc_if *desc_if = &pdata->desc_if;
 struct xgbe_channel *channel;
 struct xgbe_ring *ring;
 struct xgbe_packet_data *packet;
 int ret;

 M_ASSERTPKTHDR(m);
 MPASS(m->m_nextpkt == ((void*)0));

 if (__predict_false(test_bit(XGBE_DOWN, &pdata->dev_state) ||
     !pdata->phy.link)) {
  m_freem(m);
  return (ENETDOWN);
 }

 channel = pdata->channel;
 ring = channel->tx_ring;
 packet = &ring->packet_data;


 memset(packet, 0, sizeof(*packet));
 xgbe_packet_info(pdata, ring, m, packet);


 ret = xgbe_maybe_stop_tx_queue(channel, ring, packet->rdesc_count);
 if (ret)
  goto tx_netdev_return;

 if (!desc_if->map_tx_skb(channel, m)) {
  goto tx_netdev_return;
 }


 hw_if->dev_xmit(channel);

 return 0;

tx_netdev_return:
 m_free(m);

 return 0;
}
