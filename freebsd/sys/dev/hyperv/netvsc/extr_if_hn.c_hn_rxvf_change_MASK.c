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
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_xname; } ;
struct hn_softc {int hn_flags; int hn_link_flags; struct ifnet* hn_ifp; } ;

/* Variables and functions */
 int HN_FLAG_RXVF ; 
 int HN_FLAG_SYNTH_ATTACHED ; 
 int HN_LINK_FLAG_LINKUP ; 
 int HN_LINK_FLAG_NETCHG ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  HN_NVS_DATAPATH_SYNTH ; 
 int /*<<< orphan*/  HN_NVS_DATAPATH_VF ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  NDIS_PACKET_TYPE_NONE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct hn_softc*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct hn_softc *sc, struct ifnet *ifp, bool rxvf)
{
	struct ifnet *hn_ifp;

	FUNC0(sc);

	if (!(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED))
		goto out;

	if (!FUNC3(sc, ifp))
		goto out;
	hn_ifp = sc->hn_ifp;

	if (rxvf) {
		if (sc->hn_flags & HN_FLAG_RXVF)
			goto out;

		sc->hn_flags |= HN_FLAG_RXVF;
		FUNC6(sc);
	} else {
		if (!(sc->hn_flags & HN_FLAG_RXVF))
			goto out;

		sc->hn_flags &= ~HN_FLAG_RXVF;
		if (hn_ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC6(sc);
		else
			FUNC8(sc, NDIS_PACKET_TYPE_NONE);
	}

	FUNC4(sc,
	    rxvf ? HN_NVS_DATAPATH_VF : HN_NVS_DATAPATH_SYNTH);

	FUNC7(sc, rxvf ? ifp : NULL);

	if (rxvf) {
		FUNC10(sc, true);
		FUNC9(sc);
		sc->hn_link_flags &=
		    ~(HN_LINK_FLAG_LINKUP | HN_LINK_FLAG_NETCHG);
		FUNC12(hn_ifp, LINK_STATE_DOWN);
	} else {
		FUNC11(sc);
		FUNC5(sc);
	}

	FUNC2("HYPERV_NIC_VF", hn_ifp->if_xname,
	    rxvf ? "VF_UP" : "VF_DOWN", NULL);

	if (bootverbose) {
		FUNC13(hn_ifp, "datapath is switched %s %s\n",
		    rxvf ? "to" : "from", ifp->if_xname);
	}
out:
	FUNC1(sc);
}