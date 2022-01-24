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
struct sbni_softc {int /*<<< orphan*/  wch; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int SBNI_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  sbni_timeout ; 

__attribute__((used)) static void
FUNC3(struct sbni_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->ifp;

	/*
	 * kludge to avoid multiple initialization when more than once
	 * protocols configured
	 */
	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	FUNC1(sc);
	FUNC0(&sc->wch, hz/SBNI_HZ, sbni_timeout, sc);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	/* attempt to start output */
	FUNC2(ifp);
}