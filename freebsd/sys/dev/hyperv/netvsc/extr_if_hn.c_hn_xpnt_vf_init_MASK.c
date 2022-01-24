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
struct hn_softc {int hn_xvf_flags; TYPE_1__* hn_vf_ifp; TYPE_2__* hn_ifp; } ;
struct TYPE_4__ {int /*<<< orphan*/  if_xname; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  HN_NVS_DATAPATH_VF ; 
 int HN_XVFFLAG_ENABLED ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*,int) ; 
 int FUNC4 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC8(struct hn_softc *sc)
{
	int error;

	FUNC0(sc);

	FUNC1((sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) == 0,
	    ("%s: transparent VF was enabled", sc->hn_ifp->if_xname));

	if (bootverbose) {
		FUNC7(sc->hn_ifp, "try bringing up %s\n",
		    sc->hn_vf_ifp->if_xname);
	}

	/*
	 * Bring the VF up.
	 */
	FUNC5(sc);
	sc->hn_vf_ifp->if_flags |= IFF_UP;
	error = FUNC4(sc);
	if (error) {
		FUNC7(sc->hn_ifp, "bringing up %s failed: %d\n",
		    sc->hn_vf_ifp->if_xname, error);
		return;
	}

	/*
	 * NOTE:
	 * Datapath setting must happen _after_ bringing the VF up.
	 */
	FUNC2(sc, HN_NVS_DATAPATH_VF);

	/*
	 * NOTE:
	 * Fixup RSS related bits _after_ the VF is brought up, since
	 * many VFs generate RSS key during it's initialization.
	 */
	FUNC3(sc, true);

	/* Mark transparent mode VF as enabled. */
	FUNC6(sc);
}