#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ rl_tx_prodidx; int rl_tx_free; int rl_tx_desc_cnt; } ;
struct rl_softc {int rl_watchdog_timer; int rl_flags; TYPE_1__ rl_ldata; int /*<<< orphan*/  rl_txstart; } ;
struct netmap_kring {scalar_t__ nr_hwcur; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; struct rl_softc* if_softc; } ;
struct TYPE_4__ {struct netmap_kring** tx_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct mbuf*) ; 
 int IFCAP_NETMAP ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mbuf*) ; 
 TYPE_2__* FUNC6 (struct ifnet*) ; 
 int RL_FLAG_LINK ; 
 int /*<<< orphan*/  RL_TIMERCNT ; 
 int /*<<< orphan*/  RL_TXSTART_START ; 
 scalar_t__ FUNC7 (struct rl_softc*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC8 (struct rl_softc*) ; 

__attribute__((used)) static void
FUNC9(struct ifnet *ifp)
{
	struct rl_softc		*sc;
	struct mbuf		*m_head;
	int			queued;

	sc = ifp->if_softc;

#ifdef DEV_NETMAP
	/* XXX is this necessary ? */
	if (ifp->if_capenable & IFCAP_NETMAP) {
		struct netmap_kring *kring = NA(ifp)->tx_rings[0];
		if (sc->rl_ldata.rl_tx_prodidx != kring->nr_hwcur) {
			/* kick the tx unit */
			CSR_WRITE_1(sc, sc->rl_txstart, RL_TXSTART_START);
#ifdef RE_TX_MODERATION
			CSR_WRITE_4(sc, RL_TIMERCNT, 1);
#endif
			sc->rl_watchdog_timer = 5;
		}
		return;
	}
#endif /* DEV_NETMAP */

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->rl_flags & RL_FLAG_LINK) == 0)
		return;

	for (queued = 0; !FUNC4(&ifp->if_snd) &&
	    sc->rl_ldata.rl_tx_free > 1;) {
		FUNC3(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;

		if (FUNC7(sc, &m_head) != 0) {
			if (m_head == NULL)
				break;
			FUNC5(&ifp->if_snd, m_head);
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		/*
		 * If there's a BPF listener, bounce a copy of this frame
		 * to him.
		 */
		FUNC2(ifp, m_head);

		queued++;
	}

	if (queued == 0) {
#ifdef RE_TX_MODERATION
		if (sc->rl_ldata.rl_tx_free != sc->rl_ldata.rl_tx_desc_cnt)
			CSR_WRITE_4(sc, RL_TIMERCNT, 1);
#endif
		return;
	}

	FUNC8(sc);
}