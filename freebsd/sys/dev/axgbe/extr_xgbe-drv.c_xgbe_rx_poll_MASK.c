#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ hdr_len; scalar_t__ len; } ;
struct xgbe_ring_data {int mbuf_free; TYPE_2__ rx; struct mbuf* mb; } ;
struct xgbe_packet_data {scalar_t__ errors; int /*<<< orphan*/  attributes; } ;
struct xgbe_ring {int cur; struct xgbe_packet_data packet_data; } ;
struct xgbe_hw_if {scalar_t__ (* dev_read ) (struct xgbe_channel*) ;} ;
struct xgbe_prv_data {struct ifnet* netdev; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct mbuf {scalar_t__ m_len; TYPE_3__* m_next; TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_6__ {scalar_t__ m_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_NEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  INCOMPLETE ; 
 int /*<<< orphan*/  RX_PACKET_ATTRIBUTES ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,int) ; 
 int XGBE_RX_DESC_CNT ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (struct xgbe_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,struct mbuf*) ; 
 int FUNC8 (struct xgbe_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_channel*) ; 

__attribute__((used)) static int FUNC10(struct xgbe_channel *channel, int budget)
{
	struct xgbe_prv_data *pdata = channel->pdata;
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_ring *ring = channel->rx_ring;
	struct xgbe_ring_data *rdata;
	struct xgbe_packet_data *packet;
	struct ifnet *ifp = pdata->netdev;
	struct mbuf *m;
	unsigned int incomplete, context_next;
	unsigned int received = 0;
	int packet_count = 0;

	FUNC0("-->xgbe_rx_poll: budget=%d\n", budget);

	/* Nothing to do if there isn't a Rx ring for this channel */
	if (!ring)
		return 0;

	incomplete = 0;
	context_next = 0;

	rdata = FUNC1(ring, ring->cur);
	packet = &ring->packet_data;
	while (packet_count < budget) {
		FUNC0("  cur = %d\n", ring->cur);

read_again:
		rdata = FUNC1(ring, ring->cur);

		if (FUNC8(ring) > (XGBE_RX_DESC_CNT >> 3))
			FUNC9(channel);

		if (hw_if->dev_read(channel))
			break;

		m = rdata->mb;

		received++;
		ring->cur++;

		incomplete = FUNC2(packet->attributes,
					    RX_PACKET_ATTRIBUTES,
					    INCOMPLETE);
		context_next = FUNC2(packet->attributes,
					      RX_PACKET_ATTRIBUTES,
					      CONTEXT_NEXT);

		/* Earlier error, just drain the remaining data */
		if (incomplete || context_next) {
			goto read_again;
		}

		if (packet->errors) {
			rdata->mbuf_free = 1;
			goto next_packet;
		}
		rdata->mb = NULL;

		m->m_pkthdr.len = rdata->rx.hdr_len + rdata->rx.len;
		if (rdata->rx.hdr_len != 0) {
			m->m_len = rdata->rx.hdr_len;
			m->m_next->m_len = rdata->rx.len;
		} else {
			m->m_len = rdata->rx.len;
			FUNC5(m->m_next);
			m->m_next = NULL;
		}
		FUNC4(m, ifp);
		FUNC3(ifp, IFCOUNTER_IPACKETS, 1);

		ifp->if_input(ifp, m);

next_packet:
		packet_count++;
	}

	FUNC0("<--xgbe_rx_poll: packet_count = %d\n", packet_count);

	return packet_count;
}