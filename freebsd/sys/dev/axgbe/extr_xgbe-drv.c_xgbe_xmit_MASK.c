#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xgbe_packet_data {int /*<<< orphan*/  rdesc_count; } ;
struct xgbe_ring {struct xgbe_packet_data packet_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct xgbe_desc_if {int /*<<< orphan*/  (* map_tx_skb ) (struct xgbe_channel*,struct mbuf*) ;} ;
struct xgbe_hw_if {int /*<<< orphan*/  (* dev_xmit ) (struct xgbe_channel*) ;} ;
struct xgbe_prv_data {struct xgbe_channel* channel; TYPE_1__ phy; int /*<<< orphan*/  dev_state; struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; } ;
struct mbuf {int /*<<< orphan*/ * m_nextpkt; } ;
struct ifnet {struct xgbe_prv_data* if_softc; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  XGBE_DOWN ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_packet_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_channel*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_channel*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct xgbe_channel*,struct xgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*,struct xgbe_ring*,struct mbuf*,struct xgbe_packet_data*) ; 

int FUNC11(struct ifnet *ifp, struct mbuf *m)
{
	struct xgbe_prv_data *pdata = ifp->if_softc;
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_desc_if *desc_if = &pdata->desc_if;
	struct xgbe_channel *channel;
	struct xgbe_ring *ring;
	struct xgbe_packet_data *packet;
	int ret;

	FUNC1(m);
	FUNC0(m->m_nextpkt == NULL);

	if (FUNC2(FUNC8(XGBE_DOWN, &pdata->dev_state) ||
	    !pdata->phy.link)) {
		FUNC4(m);
		return (ENETDOWN);
	}

	channel = pdata->channel;
	ring = channel->tx_ring;
	packet = &ring->packet_data;

	/* Calculate preliminary packet info */
	FUNC5(packet, 0, sizeof(*packet));
	FUNC10(pdata, ring, m, packet);

	/* Check that there are enough descriptors available */
	ret = FUNC9(channel, ring, packet->rdesc_count);
	if (ret)
		goto tx_netdev_return;

	if (!desc_if->map_tx_skb(channel, m)) {
		goto tx_netdev_return;
	}

	/* Configure required descriptor fields for transmission */
	hw_if->dev_xmit(channel);

	return 0;

tx_netdev_return:
	FUNC3(m);

	return 0;
}