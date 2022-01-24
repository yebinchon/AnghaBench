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
struct ipsec_softc {scalar_t__ reqid; } ;
struct ifnet {struct ipsec_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_IPSEC ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idhash ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipsec_softc*) ; 
 int /*<<< orphan*/  ipsec_ioctl_sx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct ifnet *ifp)
{
	struct ipsec_softc *sc;

	FUNC7(&ipsec_ioctl_sx);
	sc = ifp->if_softc;
	FUNC6(sc);
	/*
	 * Delete softc from idhash on interface destroy, since
	 * ipsec_delete_tunnel() keeps reqid unchanged.
	 */
	if (sc->reqid != 0)
		FUNC0(sc, idhash);
	FUNC2(ifp);
	FUNC4(ifp);
	ifp->if_softc = NULL;
	FUNC8(&ipsec_ioctl_sx);

	FUNC1();
	FUNC5(ifp);
	FUNC3(sc, M_IPSEC);
}