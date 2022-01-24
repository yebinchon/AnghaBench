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
struct vtnet_softc {int vtnet_link_active; struct ifnet* vtnet_ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vtnet_softc*) ; 

__attribute__((used)) static void
FUNC3(struct vtnet_softc *sc)
{
	struct ifnet *ifp;
	int link;

	ifp = sc->vtnet_ifp;

	FUNC0(sc);
	link = FUNC2(sc);

	/* Notify if the link status has changed. */
	if (link != 0 && sc->vtnet_link_active == 0) {
		sc->vtnet_link_active = 1;
		FUNC1(ifp, LINK_STATE_UP);
	} else if (link == 0 && sc->vtnet_link_active != 0) {
		sc->vtnet_link_active = 0;
		FUNC1(ifp, LINK_STATE_DOWN);
	}
}