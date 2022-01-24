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
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_pio_txqueue {int tq_index; int tq_size; int /*<<< orphan*/  tq_pktlist; struct bwn_pio_txpkt* tq_pkts; int /*<<< orphan*/  tq_free; scalar_t__ tq_base; } ;
struct bwn_pio_txpkt {unsigned int tp_index; struct bwn_pio_txqueue* tp_queue; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PIO_MAX_TXPACKETS ; 
 int /*<<< orphan*/  BWN_PIO_TXQBUFSIZE ; 
 scalar_t__ FUNC0 (struct bwn_mac*) ; 
 unsigned int FUNC1 (struct bwn_pio_txpkt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bwn_pio_txpkt*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bwn_mac*,int) ; 
 int FUNC6 (struct bwn_mac*,struct bwn_pio_txqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tp_list ; 

__attribute__((used)) static void
FUNC7(struct bwn_mac *mac, struct bwn_pio_txqueue *tq,
    int index)
{
	struct bwn_pio_txpkt *tp;
	struct bwn_softc *sc = mac->mac_sc;
	unsigned int i;

	tq->tq_base = FUNC5(mac, index) + FUNC0(mac);
	tq->tq_index = index;

	tq->tq_free = BWN_PIO_MAX_TXPACKETS;
	if (FUNC4(sc->sc_dev) >= 8)
		tq->tq_size = 1920;
	else {
		tq->tq_size = FUNC6(mac, tq, BWN_PIO_TXQBUFSIZE);
		tq->tq_size -= 80;
	}

	FUNC2(&tq->tq_pktlist);
	for (i = 0; i < FUNC1(tq->tq_pkts); i++) {
		tp = &(tq->tq_pkts[i]);
		tp->tp_index = i;
		tp->tp_queue = tq;
		FUNC3(&tq->tq_pktlist, tp, tp_list);
	}
}