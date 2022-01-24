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
struct vmbus_channel {int dummy; } ;
struct vmbus_chan_br {int /*<<< orphan*/  cbr_rxsz; int /*<<< orphan*/  cbr_txsz; int /*<<< orphan*/  cbr_paddr; int /*<<< orphan*/  cbr; } ;
struct hn_tx_ring {int hn_tx_flags; struct vmbus_channel* hn_chan; } ;
struct hn_softc {int hn_rx_ring_inuse; int hn_tx_ring_inuse; int /*<<< orphan*/  hn_ifp; struct hn_tx_ring* hn_tx_ring; struct hn_rx_ring* hn_rx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  hv_paddr; } ;
struct hn_rx_ring {int hn_rx_flags; TYPE_1__ hn_br_dma; int /*<<< orphan*/  hn_br; struct vmbus_channel* hn_chan; } ;

/* Variables and functions */
 int EISCONN ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  HN_RXBR_SIZE ; 
 int HN_RX_FLAG_ATTACHED ; 
 int HN_RX_FLAG_BR_REF ; 
 int /*<<< orphan*/  HN_TXBR_SIZE ; 
 int HN_TX_FLAG_ATTACHED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  hn_chan_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vmbus_channel*) ; 
 int FUNC5 (struct vmbus_channel*,struct vmbus_chan_br*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hn_rx_ring*) ; 
 int FUNC6 (struct vmbus_channel*) ; 

__attribute__((used)) static int
FUNC7(struct hn_softc *sc, struct vmbus_channel *chan)
{
	struct vmbus_chan_br cbr;
	struct hn_rx_ring *rxr;
	struct hn_tx_ring *txr = NULL;
	int idx, error;

	idx = FUNC6(chan);

	/*
	 * Link this channel to RX/TX ring.
	 */
	FUNC1(idx >= 0 && idx < sc->hn_rx_ring_inuse,
	    ("invalid channel index %d, should > 0 && < %d",
	     idx, sc->hn_rx_ring_inuse));
	rxr = &sc->hn_rx_ring[idx];
	FUNC1((rxr->hn_rx_flags & HN_RX_FLAG_ATTACHED) == 0,
	    ("RX ring %d already attached", idx));
	rxr->hn_rx_flags |= HN_RX_FLAG_ATTACHED;
	rxr->hn_chan = chan;

	if (bootverbose) {
		FUNC2(sc->hn_ifp, "link RX ring %d to chan%u\n",
		    idx, FUNC4(chan));
	}

	if (idx < sc->hn_tx_ring_inuse) {
		txr = &sc->hn_tx_ring[idx];
		FUNC1((txr->hn_tx_flags & HN_TX_FLAG_ATTACHED) == 0,
		    ("TX ring %d already attached", idx));
		txr->hn_tx_flags |= HN_TX_FLAG_ATTACHED;

		txr->hn_chan = chan;
		if (bootverbose) {
			FUNC2(sc->hn_ifp, "link TX ring %d to chan%u\n",
			    idx, FUNC4(chan));
		}
	}

	/* Bind this channel to a proper CPU. */
	FUNC3(chan, FUNC0(sc, idx));

	/*
	 * Open this channel
	 */
	cbr.cbr = rxr->hn_br;
	cbr.cbr_paddr = rxr->hn_br_dma.hv_paddr;
	cbr.cbr_txsz = HN_TXBR_SIZE;
	cbr.cbr_rxsz = HN_RXBR_SIZE;
	error = FUNC5(chan, &cbr, NULL, 0, hn_chan_callback, rxr);
	if (error) {
		if (error == EISCONN) {
			FUNC2(sc->hn_ifp, "bufring is connected after "
			    "chan%u open failure\n", FUNC4(chan));
			rxr->hn_rx_flags |= HN_RX_FLAG_BR_REF;
		} else {
			FUNC2(sc->hn_ifp, "open chan%u failed: %d\n",
			    FUNC4(chan), error);
		}
	}
	return (error);
}