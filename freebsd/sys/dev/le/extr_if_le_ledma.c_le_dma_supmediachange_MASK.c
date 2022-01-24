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
struct lance_softc {struct ifmedia sc_media; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IFM_10_5 130 
#define  IFM_10_T 129 
#define  IFM_AUTO 128 
 scalar_t__ IFM_ETHER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct lance_softc*) ; 

__attribute__((used)) static int
FUNC4(struct lance_softc *sc)
{
	struct ifmedia *ifm = &sc->sc_media;

	if (FUNC1(ifm->ifm_media) != IFM_ETHER)
		return (EINVAL);

	/*
	 * Switch to the selected media. If autoselect is set, we don't
	 * really have to do anything. We'll switch to the other media
	 * when we detect loss of carrier.
	 */
	switch (FUNC0(ifm->ifm_media)) {
	case IFM_10_T:
		FUNC3(sc);
		break;

	case IFM_10_5:
		FUNC2(sc);
		break;

	case IFM_AUTO:
		break;

	default:
		return (EINVAL);
	}

	return (0);
}