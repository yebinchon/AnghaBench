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
struct ifnet {struct gif_softc* if_softc; } ;
struct gif_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  M_GIF ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct gif_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gif_softc*) ; 
 int /*<<< orphan*/  gif_ioctl_sx ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct ifnet *ifp)
{
	struct gif_softc *sc;

	FUNC8(&gif_ioctl_sx);
	sc = ifp->if_softc;
	FUNC3(sc);
	if (&ng_gif_detach_p != NULL)
		FUNC6)(ifp);
	FUNC1(ifp);
	FUNC4(ifp);
	ifp->if_softc = NULL;
	FUNC9(&gif_ioctl_sx);

	FUNC0();
	FUNC5(ifp);
	FUNC2(sc, M_GIF);
}