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
struct sfxge_softc {int /*<<< orphan*/  media; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_softc*) ; 

__attribute__((used)) static void
FUNC6(struct ifnet *ifp)
{
	struct sfxge_softc *sc = ifp->if_softc;

	FUNC0(sc);
	FUNC5(sc);
	FUNC1(sc);

	FUNC4(&sc->media);
	FUNC2(ifp);
	FUNC3(ifp);
}