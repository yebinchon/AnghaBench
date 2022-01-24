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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct sfxge_softc {int /*<<< orphan*/  enp; TYPE_1__ media; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;
struct ifmedia_entry {int /*<<< orphan*/  ifm_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_softc*) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp)
{
	struct sfxge_softc *sc;
	struct ifmedia_entry *ifm;
	int rc;
	uint32_t phy_cap_mask;

	sc = ifp->if_softc;
	ifm = sc->media.ifm_cur;

	FUNC0(sc);

	if (!FUNC2(sc)) {
		rc = 0;
		goto out;
	}

	rc = FUNC3(sc->enp, FUNC6(sc), B_TRUE);
	if (rc != 0)
		goto out;

	if ((rc = FUNC5(sc, ifm->ifm_media, &phy_cap_mask)) != 0)
		goto out;

	rc = FUNC4(sc->enp, phy_cap_mask);
out:
	FUNC1(sc);

	return (rc);
}