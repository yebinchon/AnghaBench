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
struct et_txdesc_ring {int dummy; } ;
struct et_txbuf_data {struct et_txbuf* tbd_buf; } ;
struct et_txbuf {int /*<<< orphan*/ * tb_mbuf; int /*<<< orphan*/  tb_dmap; } ;
struct et_softc {int /*<<< orphan*/  sc_mbuf_dtag; int /*<<< orphan*/  sc_tx_tag; struct et_txdesc_ring sc_tx_ring; struct et_txbuf_data sc_tx_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int ET_TX_NDESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct et_softc *sc)
{
	struct et_txdesc_ring *tx_ring;
	struct et_txbuf_data *tbd;
	struct et_txbuf *tb;
	int i;

	tbd = &sc->sc_tx_data;
	tx_ring = &sc->sc_tx_ring;
	for (i = 0; i < ET_TX_NDESC; ++i) {
		tb = &tbd->tbd_buf[i];
		if (tb->tb_mbuf != NULL) {
			FUNC0(sc->sc_tx_tag, tb->tb_dmap,
			    BUS_DMASYNC_POSTWRITE);
			FUNC1(sc->sc_mbuf_dtag, tb->tb_dmap);
			FUNC2(tb->tb_mbuf);
			tb->tb_mbuf = NULL;
		}
	}
}