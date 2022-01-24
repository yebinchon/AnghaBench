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
struct xl_softc {int xl_media; scalar_t__ xl_type; int xl_caps; int /*<<< orphan*/  xl_dev; int /*<<< orphan*/  xl_miibus; } ;
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFM_10_2 ; 
 int IFM_10_5 ; 
 int IFM_10_FL ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int IFM_HDX ; 
 int XL_CAPS_FULL_DUPLEX ; 
 int XL_MEDIAOPT_10FL ; 
 int XL_MEDIAOPT_AUI ; 
 int XL_MEDIAOPT_BNC ; 
 scalar_t__ XL_TYPE_905B ; 
 scalar_t__ bootverbose ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmedia*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct xl_softc		*sc;
	struct mii_data		*mii;
	struct ifmedia		*ifm;

	sc = FUNC0(dev);
	mii = FUNC0(sc->xl_miibus);
	ifm = &mii->mii_media;

	if (sc->xl_media & (XL_MEDIAOPT_AUI | XL_MEDIAOPT_10FL)) {
		/*
		 * Check for a 10baseFL board in disguise.
		 */
		if (sc->xl_type == XL_TYPE_905B &&
		    sc->xl_media == XL_MEDIAOPT_10FL) {
			if (bootverbose)
				FUNC1(sc->xl_dev, "found 10baseFL\n");
			FUNC2(ifm, IFM_ETHER | IFM_10_FL, 0, NULL);
			FUNC2(ifm, IFM_ETHER | IFM_10_FL|IFM_HDX, 0,
			    NULL);
			if (sc->xl_caps & XL_CAPS_FULL_DUPLEX)
				FUNC2(ifm,
				    IFM_ETHER | IFM_10_FL | IFM_FDX, 0, NULL);
		} else {
			if (bootverbose)
				FUNC1(sc->xl_dev, "found AUI\n");
			FUNC2(ifm, IFM_ETHER | IFM_10_5, 0, NULL);
		}
	}

	if (sc->xl_media & XL_MEDIAOPT_BNC) {
		if (bootverbose)
			FUNC1(sc->xl_dev, "found BNC\n");
		FUNC2(ifm, IFM_ETHER | IFM_10_2, 0, NULL);
	}
}