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
struct mii_data {struct ifmedia mii_media; } ;
struct dc_softc {int /*<<< orphan*/  dc_miibus; scalar_t__ dc_link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dc_softc*) ; 
 scalar_t__ FUNC1 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*) ; 
 scalar_t__ IFM_HPNA_1 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC7(struct dc_softc *sc)
{
	struct mii_data *mii;
	struct ifmedia *ifm;
	int error;

	FUNC2(sc);

	sc->dc_link = 0;
	mii = FUNC5(sc->dc_miibus);
	error = FUNC6(mii);
	if (error == 0) {
		ifm = &mii->mii_media;
		if (FUNC1(sc))
			FUNC4(sc, ifm->ifm_media);
		else if (FUNC0(sc) &&
		    FUNC3(ifm->ifm_media) == IFM_HPNA_1)
			FUNC4(sc, ifm->ifm_media);
	}

	return (error);
}