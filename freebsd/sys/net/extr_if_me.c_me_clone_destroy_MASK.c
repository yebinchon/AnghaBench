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
struct me_softc {int dummy; } ;
struct ifnet {struct me_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  M_IFME ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct me_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct me_softc*) ; 
 int /*<<< orphan*/  me_ioctl_sx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct me_softc *sc;

	FUNC6(&me_ioctl_sx);
	sc = ifp->if_softc;
	FUNC5(sc);
	FUNC1(ifp);
	FUNC3(ifp);
	ifp->if_softc = NULL;
	FUNC7(&me_ioctl_sx);

	FUNC0();
	FUNC4(ifp);
	FUNC2(sc, M_IFME);
}