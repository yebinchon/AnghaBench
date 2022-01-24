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
typedef  int /*<<< orphan*/  uint32_t ;
struct mbuf {int dummy; } ;
struct bge_softc {int bge_txcnt; int /*<<< orphan*/  bge_tx_prodidx; int /*<<< orphan*/  bge_link; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bge_softc*) ; 
 int BGE_TX_RING_CNT ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ FUNC1 (struct bge_softc*,struct mbuf**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbuf*) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct bge_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(if_t ifp)
{
	struct bge_softc *sc;
	struct mbuf *m_head;
	uint32_t prodidx;
	int count;

	sc = FUNC6(ifp);
	FUNC0(sc);

	if (!sc->bge_link ||
	    (FUNC5(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	prodidx = sc->bge_tx_prodidx;

	for (count = 0; !FUNC7(ifp);) {
		if (sc->bge_txcnt > BGE_TX_RING_CNT - 16) {
			FUNC9(ifp, IFF_DRV_OACTIVE, 0);
			break;
		}
		m_head = FUNC4(ifp);
		if (m_head == NULL)
			break;

		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC1(sc, &m_head, &prodidx)) {
			if (m_head == NULL)
				break;
			FUNC8(ifp, m_head);
			FUNC9(ifp, IFF_DRV_OACTIVE, 0);
			break;
		}
		++count;

		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC3(ifp, m_head);
	}

	if (count > 0)
		FUNC2(sc, prodidx);
}