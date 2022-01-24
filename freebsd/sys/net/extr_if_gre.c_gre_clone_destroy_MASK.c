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
struct ifnet {struct gre_softc* if_softc; } ;
struct gre_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  M_GRE ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct gre_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gre_softc*) ; 
 int /*<<< orphan*/  gre_ioctl_sx ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct gre_softc *sc;

	FUNC6(&gre_ioctl_sx);
	sc = ifp->if_softc;
	FUNC3(sc);
	FUNC1(ifp);
	FUNC4(ifp);
	ifp->if_softc = NULL;
	FUNC7(&gre_ioctl_sx);

	FUNC0();
	FUNC5(ifp);
	FUNC2(sc, M_GRE);
}