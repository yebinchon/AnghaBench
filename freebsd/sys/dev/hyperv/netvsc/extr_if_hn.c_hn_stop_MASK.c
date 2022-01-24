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
struct ifnet {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_xname; } ;
struct hn_softc {int hn_flags; int hn_xvf_flags; int hn_tx_ring_inuse; TYPE_2__* hn_tx_ring; TYPE_1__* hn_vf_ifp; struct ifnet* hn_ifp; } ;
struct TYPE_4__ {scalar_t__ hn_oactive; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_flags; } ;

/* Variables and functions */
 int HN_FLAG_RXVF ; 
 int HN_FLAG_SYNTH_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  HN_NVS_DATAPATH_SYNTH ; 
 int HN_XVFFLAG_ENABLED ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct hn_softc*,int) ; 

__attribute__((used)) static void
FUNC10(struct hn_softc *sc, bool detaching)
{
	struct ifnet *ifp = sc->hn_ifp;
	int i;

	FUNC0(sc);

	FUNC1(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED,
	    ("synthetic parts were not attached"));

	/* Clear RUNNING bit ASAP. */
	FUNC2(&ifp->if_drv_flags, IFF_DRV_RUNNING);

	/* Disable polling. */
	FUNC4(sc, 0);

	if (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) {
		FUNC1(sc->hn_vf_ifp != NULL,
		    ("%s: VF is not attached", ifp->if_xname));

		/* Mark transparent mode VF as disabled. */
		FUNC9(sc, false /* keep hn_vf_ifp */);

		/*
		 * NOTE:
		 * Datapath setting must happen _before_ bringing
		 * the VF down.
		 */
		FUNC3(sc, HN_NVS_DATAPATH_SYNTH);

		/*
		 * Bring the VF down.
		 */
		FUNC8(sc);
		sc->hn_vf_ifp->if_flags &= ~IFF_UP;
		FUNC7(sc);
	}

	/* Suspend data transfers. */
	FUNC6(sc);

	/* Clear OACTIVE bit. */
	FUNC2(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
	for (i = 0; i < sc->hn_tx_ring_inuse; ++i)
		sc->hn_tx_ring[i].hn_oactive = 0;

	/*
	 * If the non-transparent mode VF is active, make sure
	 * that the RX filter still allows packet reception.
	 */
	if (!detaching && (sc->hn_flags & HN_FLAG_RXVF))
		FUNC5(sc);
}