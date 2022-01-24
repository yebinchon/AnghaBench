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
struct ifnet {int if_index; int /*<<< orphan*/  if_input; int /*<<< orphan*/  if_xname; int /*<<< orphan*/ * if_start; } ;
struct hn_softc {int hn_flags; int hn_xvf_flags; int /*<<< orphan*/  hn_vf_init; int /*<<< orphan*/  hn_vf_taskq; scalar_t__ hn_vf_rdytick; int /*<<< orphan*/  hn_vf_input; int /*<<< orphan*/  hn_vf_lock; struct ifnet* hn_vf_ifp; struct ifnet* hn_ifp; } ;

/* Variables and functions */
 int HN_FLAG_SYNTH_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int HN_VFMAP_SIZE_DEF ; 
 int HN_XVFFLAG_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_softc*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct hn_softc*) ; 
 struct ifnet** hn_vfmap ; 
 int /*<<< orphan*/  hn_vfmap_lock ; 
 int hn_vfmap_size ; 
 scalar_t__ hn_xpnt_vf ; 
 int hn_xpnt_vf_attwait ; 
 int /*<<< orphan*/  hn_xpnt_vf_input ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,char*,int /*<<< orphan*/ ) ; 
 struct ifnet** FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet**,struct ifnet**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void
FUNC12(void *xsc, struct ifnet *ifp)
{
	struct hn_softc *sc = xsc;

	FUNC0(sc);

	if (!(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED))
		goto done;

	if (!FUNC4(sc, ifp))
		goto done;

	if (sc->hn_vf_ifp != NULL) {
		FUNC6(sc->hn_ifp, "%s was attached as VF\n",
		    sc->hn_vf_ifp->if_xname);
		goto done;
	}

	if (hn_xpnt_vf && ifp->if_start != NULL) {
		/*
		 * ifnet.if_start is _not_ supported by transparent
		 * mode VF; mainly due to the IFF_DRV_OACTIVE flag.
		 */
		FUNC6(sc->hn_ifp, "%s uses if_start, which is unsupported "
		    "in transparent VF mode.\n", ifp->if_xname);
		goto done;
	}

	FUNC9(&hn_vfmap_lock);

	if (ifp->if_index >= hn_vfmap_size) {
		struct ifnet **newmap;
		int newsize;

		newsize = ifp->if_index + HN_VFMAP_SIZE_DEF;
		newmap = FUNC7(sizeof(struct ifnet *) * newsize, M_DEVBUF,
		    M_WAITOK | M_ZERO);

		FUNC8(newmap, hn_vfmap,
		    sizeof(struct ifnet *) * hn_vfmap_size);
		FUNC3(hn_vfmap, M_DEVBUF);
		hn_vfmap = newmap;
		hn_vfmap_size = newsize;
	}
	FUNC2(hn_vfmap[ifp->if_index] == NULL,
	    ("%s: ifindex %d was mapped to %s",
	     ifp->if_xname, ifp->if_index, hn_vfmap[ifp->if_index]->if_xname));
	hn_vfmap[ifp->if_index] = sc->hn_ifp;

	FUNC10(&hn_vfmap_lock);

	/* NOTE: hn_vf_lock for hn_transmit()/hn_qflush() */
	FUNC9(&sc->hn_vf_lock);
	FUNC2((sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) == 0,
	    ("%s: transparent VF was enabled", sc->hn_ifp->if_xname));
	sc->hn_vf_ifp = ifp;
	FUNC10(&sc->hn_vf_lock);

	if (hn_xpnt_vf) {
		int wait_ticks;

		/*
		 * Install if_input for vf_ifp, which does vf_ifp -> hn_ifp.
		 * Save vf_ifp's current if_input for later restoration.
		 */
		sc->hn_vf_input = ifp->if_input;
		ifp->if_input = hn_xpnt_vf_input;

		/*
		 * Stop link status management; use the VF's.
		 */
		FUNC5(sc);

		/*
		 * Give VF sometime to complete its attach routing.
		 */
		wait_ticks = hn_xpnt_vf_attwait * hz;
		sc->hn_vf_rdytick = ticks + wait_ticks;

		FUNC11(sc->hn_vf_taskq, &sc->hn_vf_init,
		    wait_ticks);
	}
done:
	FUNC1(sc);
}