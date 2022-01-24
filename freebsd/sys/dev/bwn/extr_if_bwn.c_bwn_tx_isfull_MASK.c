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
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct bwn_softc {int /*<<< orphan*/  sc_snd; struct bwn_mac* sc_curmac; } ;
struct bwn_pio_txqueue {scalar_t__ tq_free; int tq_size; int tq_used; } ;
struct bwn_mac {int mac_flags; } ;
struct bwn_dma_ring {int dr_stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 scalar_t__ FUNC1 (struct bwn_mac*) ; 
 int BWN_MAC_FLAG_DMA ; 
 scalar_t__ BWN_TX_SLOTS_PER_FRAME ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (struct bwn_dma_ring*) ; 
 struct bwn_dma_ring* FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 struct bwn_pio_txqueue* FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC8(struct bwn_softc *sc, struct mbuf *m)
{
	struct bwn_dma_ring *dr;
	struct bwn_mac *mac = sc->sc_curmac;
	struct bwn_pio_txqueue *tq;
	int pktlen = FUNC7(m->m_pkthdr.len + FUNC1(mac), 4);

	FUNC0(sc);

	if (mac->mac_flags & BWN_MAC_FLAG_DMA) {
		dr = FUNC4(mac, FUNC2(m));
		if (dr->dr_stop == 1 ||
		    FUNC3(dr) < BWN_TX_SLOTS_PER_FRAME) {
			dr->dr_stop = 1;
			goto full;
		}
	} else {
		tq = FUNC5(mac, FUNC2(m));
		if (tq->tq_free == 0 || pktlen > tq->tq_size ||
		    pktlen > (tq->tq_size - tq->tq_used))
			goto full;
	}
	return (0);
full:
	FUNC6(&sc->sc_snd, m);
	return (1);
}