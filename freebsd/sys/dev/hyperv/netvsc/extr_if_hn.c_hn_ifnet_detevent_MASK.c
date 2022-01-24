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
struct ifnet {size_t if_index; int /*<<< orphan*/  if_xname; int /*<<< orphan*/ * if_input; } ;
struct hn_softc {int hn_flags; int hn_xvf_flags; scalar_t__ hn_vf_rdytick; TYPE_1__* hn_ifp; int /*<<< orphan*/  hn_saved_tsosegsz; int /*<<< orphan*/  hn_saved_tsosegcnt; int /*<<< orphan*/  hn_saved_tsomax; int /*<<< orphan*/  hn_saved_caps; int /*<<< orphan*/ * hn_vf_input; int /*<<< orphan*/  hn_vf_init; int /*<<< orphan*/  hn_vf_taskq; int /*<<< orphan*/ * hn_vf_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_hw_tsomaxsegsize; int /*<<< orphan*/  if_hw_tsomaxsegcount; int /*<<< orphan*/  if_hw_tsomax; int /*<<< orphan*/  if_capabilities; } ;

/* Variables and functions */
 int HN_FLAG_SYNTH_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  HN_NVS_DATAPATH_SYNTH ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int HN_XVFFLAG_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hn_softc*) ; 
 TYPE_1__** hn_vfmap ; 
 int /*<<< orphan*/  hn_vfmap_lock ; 
 size_t hn_vfmap_size ; 
 scalar_t__ hn_xpnt_vf ; 
 int /*<<< orphan*/  FUNC7 (struct hn_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(void *xsc, struct ifnet *ifp)
{
	struct hn_softc *sc = xsc;

	FUNC0(sc);

	if (sc->hn_vf_ifp == NULL)
		goto done;

	if (!FUNC3(sc, ifp))
		goto done;

	if (hn_xpnt_vf) {
		/*
		 * Make sure that the delayed initialization is not running.
		 *
		 * NOTE:
		 * - This lock _must_ be released, since the hn_vf_init task
		 *   will try holding this lock.
		 * - It is safe to release this lock here, since the
		 *   hn_ifnet_attevent() is interlocked by the hn_vf_ifp.
		 *
		 * XXX racy, if hn(4) ever detached.
		 */
		FUNC1(sc);
		FUNC10(sc->hn_vf_taskq, &sc->hn_vf_init);
		FUNC0(sc);

		FUNC2(sc->hn_vf_input != NULL, ("%s VF input is not saved",
		    sc->hn_ifp->if_xname));
		ifp->if_input = sc->hn_vf_input;
		sc->hn_vf_input = NULL;

		if ((sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) &&
		    (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED))
			FUNC4(sc, HN_NVS_DATAPATH_SYNTH);

		if (sc->hn_vf_rdytick == 0) {
			/*
			 * The VF was ready; restore some settings.
			 */
			sc->hn_ifp->if_capabilities = sc->hn_saved_caps;
			/*
			 * NOTE:
			 * There is _no_ need to fixup if_capenable and
			 * if_hwassist, since the if_capabilities before
			 * restoration was an intersection of the VF's
			 * if_capabilites and the synthetic device's
			 * if_capabilites.
			 */
			sc->hn_ifp->if_hw_tsomax = sc->hn_saved_tsomax;
			sc->hn_ifp->if_hw_tsomaxsegcount =
			    sc->hn_saved_tsosegcnt;
			sc->hn_ifp->if_hw_tsomaxsegsize = sc->hn_saved_tsosegsz;
		}

		if (sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) {
			/*
			 * Restore RSS settings.
			 */
			FUNC6(sc);

			/*
			 * Resume link status management, which was suspended
			 * by hn_ifnet_attevent().
			 */
			FUNC5(sc);
		}
	}

	/* Mark transparent mode VF as disabled. */
	FUNC7(sc, true /* clear hn_vf_ifp */);

	FUNC8(&hn_vfmap_lock);

	FUNC2(ifp->if_index < hn_vfmap_size,
	    ("ifindex %d, vfmapsize %d", ifp->if_index, hn_vfmap_size));
	if (hn_vfmap[ifp->if_index] != NULL) {
		FUNC2(hn_vfmap[ifp->if_index] == sc->hn_ifp,
		    ("%s: ifindex %d was mapped to %s",
		     ifp->if_xname, ifp->if_index,
		     hn_vfmap[ifp->if_index]->if_xname));
		hn_vfmap[ifp->if_index] = NULL;
	}

	FUNC9(&hn_vfmap_lock);
done:
	FUNC1(sc);
}