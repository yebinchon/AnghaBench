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
struct bwi_txbuf_data {struct bwi_txbuf* tbd_buf; } ;
struct bwi_txbuf {int /*<<< orphan*/  tb_dmap; int /*<<< orphan*/ * tb_ni; int /*<<< orphan*/ * tb_mbuf; } ;
struct bwi_rxbuf_data {struct bwi_rxbuf* rbd_buf; int /*<<< orphan*/  rbd_tmp_dmap; } ;
struct bwi_softc {int /*<<< orphan*/ * sc_buf_dtag; struct bwi_rxbuf_data sc_rx_bdata; struct bwi_txbuf_data* sc_tx_bdata; } ;
struct bwi_rxbuf {int /*<<< orphan*/  rb_dmap; int /*<<< orphan*/ * rb_mbuf; } ;

/* Variables and functions */
 int BWI_RX_NDESC ; 
 int BWI_TX_NDESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bwi_softc *sc, int ntx, int nrx)
{
	int i, j;

	if (sc->sc_buf_dtag == NULL)
		return;

	for (i = 0; i < ntx; ++i) {
		struct bwi_txbuf_data *tbd = &sc->sc_tx_bdata[i];

		for (j = 0; j < BWI_TX_NDESC; ++j) {
			struct bwi_txbuf *tb = &tbd->tbd_buf[j];

			if (tb->tb_mbuf != NULL) {
				FUNC2(sc->sc_buf_dtag,
						  tb->tb_dmap);
				FUNC4(tb->tb_mbuf);
			}
			if (tb->tb_ni != NULL)
				FUNC3(tb->tb_ni);
			FUNC1(sc->sc_buf_dtag, tb->tb_dmap);
		}
	}

	if (nrx) {
		struct bwi_rxbuf_data *rbd = &sc->sc_rx_bdata;

		FUNC1(sc->sc_buf_dtag, rbd->rbd_tmp_dmap);
		for (j = 0; j < BWI_RX_NDESC; ++j) {
			struct bwi_rxbuf *rb = &rbd->rbd_buf[j];

			if (rb->rb_mbuf != NULL) {
				FUNC2(sc->sc_buf_dtag,
						  rb->rb_dmap);
				FUNC4(rb->rb_mbuf);
			}
			FUNC1(sc->sc_buf_dtag, rb->rb_dmap);
		}
	}

	FUNC0(sc->sc_buf_dtag);
	sc->sc_buf_dtag = NULL;
}