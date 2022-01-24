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
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct dc_softc {int /*<<< orphan*/  dc_miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dc_softc*) ; 
 int DC_REVISION_DM9102A ; 
 int IFM_ETHER ; 
 int IFM_HPNA_1 ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmedia*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct dc_softc *sc;
	struct mii_data *mii;
	struct ifmedia *ifm;
	int rev;

	rev = FUNC3(dev);

	sc = FUNC1(dev);
	mii = FUNC1(sc->dc_miibus);
	ifm = &mii->mii_media;

	if (FUNC0(sc) && rev >= DC_REVISION_DM9102A)
		FUNC2(ifm, IFM_ETHER | IFM_HPNA_1, 0, NULL);
}