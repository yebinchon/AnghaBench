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
struct xl_softc {int xl_media; scalar_t__ xl_xcvr; scalar_t__ xl_type; int /*<<< orphan*/  xl_dev; } ;

/* Variables and functions */
 int XL_MEDIAOPT_10FL ; 
 int XL_MEDIAOPT_MASK ; 
 int XL_MEDIAOPT_VCO ; 
 scalar_t__ XL_TYPE_905B ; 
 scalar_t__ XL_XCVR_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*,int) ; 

__attribute__((used)) static void
FUNC2(struct xl_softc *sc)
{

	/*
	 * If some of the media options bits are set, assume they are
	 * correct. If not, try to figure it out down below.
	 * XXX I should check for 10baseFL, but I don't have an adapter
	 * to test with.
	 */
	if (sc->xl_media & (XL_MEDIAOPT_MASK & ~XL_MEDIAOPT_VCO)) {
		/*
		 * Check the XCVR value. If it's not in the normal range
		 * of values, we need to fake it up here.
		 */
		if (sc->xl_xcvr <= XL_XCVR_AUTO)
			return;
		else {
			FUNC0(sc->xl_dev,
			    "bogus xcvr value in EEPROM (%x)\n", sc->xl_xcvr);
			FUNC0(sc->xl_dev,
			    "choosing new default based on card type\n");
		}
	} else {
		if (sc->xl_type == XL_TYPE_905B &&
		    sc->xl_media & XL_MEDIAOPT_10FL)
			return;
		FUNC0(sc->xl_dev,
"WARNING: no media options bits set in the media options register!!\n");
		FUNC0(sc->xl_dev,
"this could be a manufacturing defect in your adapter or system\n");
		FUNC0(sc->xl_dev,
"attempting to guess media type; you should probably consult your vendor\n");
	}

	FUNC1(sc, 1);
}