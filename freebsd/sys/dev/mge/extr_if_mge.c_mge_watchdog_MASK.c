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
struct mge_softc {scalar_t__ wd_timer; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mge_softc*) ; 

__attribute__((used)) static void
FUNC4(struct mge_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->ifp;

	if (sc->wd_timer == 0 || --sc->wd_timer) {
		return;
	}

	FUNC0(ifp, IFCOUNTER_OERRORS, 1);
	FUNC1(ifp, "watchdog timeout\n");

	FUNC3(sc);
	FUNC2(sc);
}