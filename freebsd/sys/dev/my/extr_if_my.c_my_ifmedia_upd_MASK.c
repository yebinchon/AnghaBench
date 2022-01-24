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
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct my_softc {struct ifmedia ifmedia; } ;
struct ifnet {struct my_softc* if_softc; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IFM_AUTO ; 
 scalar_t__ IFM_ETHER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MY_FLAG_SCHEDDELAY ; 
 int /*<<< orphan*/  FUNC2 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct my_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ifnet * ifp)
{
	struct my_softc *sc;
	struct ifmedia *ifm;

	sc = ifp->if_softc;
	FUNC2(sc);
	ifm = &sc->ifmedia;
	if (FUNC1(ifm->ifm_media) != IFM_ETHER) {
		FUNC3(sc);
		return (EINVAL);
	}
	if (FUNC0(ifm->ifm_media) == IFM_AUTO)
		FUNC4(sc, MY_FLAG_SCHEDDELAY, 1);
	else
		FUNC5(sc, ifm->ifm_media);
	FUNC3(sc);
	return (0);
}