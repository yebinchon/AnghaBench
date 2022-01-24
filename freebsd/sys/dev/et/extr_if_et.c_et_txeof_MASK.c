#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct et_txdesc_ring {int /*<<< orphan*/  tr_dmap; int /*<<< orphan*/  tr_dtag; } ;
struct et_txbuf_data {int tbd_used; int tbd_start_index; int tbd_start_wrap; struct et_txbuf* tbd_buf; } ;
struct et_txbuf {int /*<<< orphan*/ * tb_mbuf; int /*<<< orphan*/  tb_dmap; } ;
struct et_softc {int sc_flags; scalar_t__ watchdog_timer; int /*<<< orphan*/  sc_tx_tag; struct et_txbuf_data sc_tx_data; struct et_txdesc_ring sc_tx_ring; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int FUNC0 (struct et_softc*,int /*<<< orphan*/ ) ; 
 int ET_FLAG_TXRX_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*) ; 
 int ET_NSEG_SPARE ; 
 int /*<<< orphan*/  ET_TX_DONE_POS ; 
 int ET_TX_DONE_POS_INDEX_MASK ; 
 int ET_TX_DONE_POS_WRAP ; 
 int ET_TX_NDESC ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct et_softc *sc)
{
	struct et_txdesc_ring *tx_ring;
	struct et_txbuf_data *tbd;
	struct et_txbuf *tb;
	struct ifnet *ifp;
	uint32_t tx_done;
	int end, wrap;

	FUNC1(sc);

	ifp = sc->ifp;
	tx_ring = &sc->sc_tx_ring;
	tbd = &sc->sc_tx_data;

	if ((sc->sc_flags & ET_FLAG_TXRX_ENABLED) == 0)
		return;

	if (tbd->tbd_used == 0)
		return;

	FUNC3(tx_ring->tr_dtag, tx_ring->tr_dmap,
	    BUS_DMASYNC_POSTWRITE);

	tx_done = FUNC0(sc, ET_TX_DONE_POS);
	end = tx_done & ET_TX_DONE_POS_INDEX_MASK;
	wrap = (tx_done & ET_TX_DONE_POS_WRAP) ? 1 : 0;

	while (tbd->tbd_start_index != end || tbd->tbd_start_wrap != wrap) {
		FUNC2(tbd->tbd_start_index < ET_TX_NDESC);
		tb = &tbd->tbd_buf[tbd->tbd_start_index];
		if (tb->tb_mbuf != NULL) {
			FUNC3(sc->sc_tx_tag, tb->tb_dmap,
			    BUS_DMASYNC_POSTWRITE);
			FUNC4(sc->sc_tx_tag, tb->tb_dmap);
			FUNC5(tb->tb_mbuf);
			tb->tb_mbuf = NULL;
		}

		if (++tbd->tbd_start_index == ET_TX_NDESC) {
			tbd->tbd_start_index = 0;
			tbd->tbd_start_wrap ^= 1;
		}

		FUNC2(tbd->tbd_used > 0);
		tbd->tbd_used--;
	}

	if (tbd->tbd_used == 0)
		sc->watchdog_timer = 0;
	if (tbd->tbd_used + ET_NSEG_SPARE < ET_TX_NDESC)
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}