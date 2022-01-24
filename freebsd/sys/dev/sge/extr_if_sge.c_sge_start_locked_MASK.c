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
struct TYPE_2__ {scalar_t__ sge_tx_cnt; int /*<<< orphan*/  sge_tx_dmamap; int /*<<< orphan*/  sge_tx_tag; } ;
struct sge_softc {int sge_flags; int sge_timer; TYPE_1__ sge_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct sge_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int SGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC5 (struct sge_softc*) ; 
 scalar_t__ SGE_MAXTXSEGS ; 
 scalar_t__ SGE_TX_RING_CNT ; 
 int /*<<< orphan*/  TX_CTL ; 
 int TX_CTL_ENB ; 
 int TX_CTL_POLL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct sge_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct sge_softc *sc;
	struct mbuf *m_head;
	int queued = 0;

	sc = ifp->if_softc;
	FUNC5(sc);

	if ((sc->sge_flags & SGE_FLAG_LINK) == 0 ||
	    (ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	for (queued = 0; !FUNC3(&ifp->if_snd); ) {
		if (sc->sge_cdata.sge_tx_cnt > (SGE_TX_RING_CNT -
		    SGE_MAXTXSEGS)) {
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}
		FUNC2(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;
		if (FUNC7(sc, &m_head)) {
			if (m_head == NULL)
				break;
			FUNC4(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}
		queued++;
		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC0(ifp, m_head);
	}

	if (queued > 0) {
		FUNC6(sc->sge_cdata.sge_tx_tag,
		    sc->sge_cdata.sge_tx_dmamap,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		FUNC1(sc, TX_CTL, 0x1a00 | TX_CTL_ENB | TX_CTL_POLL);
		sc->sge_timer = 5;
	}
}