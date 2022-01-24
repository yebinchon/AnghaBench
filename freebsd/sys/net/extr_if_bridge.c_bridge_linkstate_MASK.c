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
struct ifnet {struct bridge_softc* if_bridge; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int /*<<< orphan*/  bif_stp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_softc*) ; 
 struct bridge_iflist* FUNC3 (struct bridge_softc*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct bridge_softc *sc = ifp->if_bridge;
	struct bridge_iflist *bif;

	FUNC0(sc);
	bif = FUNC3(sc, ifp);
	if (bif == NULL) {
		FUNC1(sc);
		return;
	}
	FUNC2(sc);
	FUNC1(sc);

	FUNC4(&bif->bif_stp);
}