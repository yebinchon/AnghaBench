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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct alc_softc* if_softc; } ;
struct TYPE_2__ {scalar_t__ alc_tx_cnt; } ;
struct alc_softc {int alc_flags; TYPE_1__ alc_cdata; } ;

/* Variables and functions */
 int ALC_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 scalar_t__ ALC_TX_DESC_HIWAT ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC5 (struct alc_softc*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC6 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct alc_softc*) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct alc_softc *sc;
	struct mbuf *m_head;
	int enq;

	sc = ifp->if_softc;

	FUNC0(sc);

	/* Reclaim transmitted frames. */
	if (sc->alc_cdata.alc_tx_cnt >= ALC_TX_DESC_HIWAT)
		FUNC7(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->alc_flags & ALC_FLAG_LINK) == 0)
		return;

	for (enq = 0; !FUNC3(&ifp->if_snd); ) {
		FUNC2(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		/*
		 * Pack the data into the transmit ring. If we
		 * don't have room, set the OACTIVE flag and wait
		 * for the NIC to drain the ring.
		 */
		if (FUNC5(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC4(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		enq++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC1(ifp, m_head);
	}

	if (enq > 0)
		FUNC6(sc);
}