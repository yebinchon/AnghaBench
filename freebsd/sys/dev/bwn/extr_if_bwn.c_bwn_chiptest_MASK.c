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
typedef  scalar_t__ uint32_t ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  BWN_MACCTL ; 
 scalar_t__ BWN_MACCTL_GMODE ; 
 scalar_t__ BWN_MACCTL_IHR_ON ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_SHARED ; 
 int /*<<< orphan*/  BWN_TSF_CFP_START ; 
 int /*<<< orphan*/  BWN_TSF_CFP_START_HIGH ; 
 int /*<<< orphan*/  BWN_TSF_CFP_START_LOW ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int ENODEV ; 
 scalar_t__ TESTVAL0 ; 
 scalar_t__ TESTVAL1 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10(struct bwn_mac *mac)
{
#define	TESTVAL0	0x55aaaa55
#define	TESTVAL1	0xaa5555aa
	struct bwn_softc *sc = mac->mac_sc;
	uint32_t v, backup;

	FUNC0(sc);

	backup = FUNC7(mac, BWN_SHARED, 0);

	FUNC8(mac, BWN_SHARED, 0, TESTVAL0);
	if (FUNC7(mac, BWN_SHARED, 0) != TESTVAL0)
		goto error;
	FUNC8(mac, BWN_SHARED, 0, TESTVAL1);
	if (FUNC7(mac, BWN_SHARED, 0) != TESTVAL1)
		goto error;

	FUNC8(mac, BWN_SHARED, 0, backup);

	if ((FUNC6(sc->sc_dev) >= 3) &&
	    (FUNC6(sc->sc_dev) <= 10)) {
		FUNC4(mac, BWN_TSF_CFP_START, 0xaaaa);
		FUNC5(mac, BWN_TSF_CFP_START, 0xccccbbbb);
		if (FUNC1(mac, BWN_TSF_CFP_START_LOW) != 0xbbbb)
			goto error;
		if (FUNC1(mac, BWN_TSF_CFP_START_HIGH) != 0xcccc)
			goto error;
	}
	FUNC5(mac, BWN_TSF_CFP_START, 0);

	v = FUNC2(mac, BWN_MACCTL) | BWN_MACCTL_GMODE;
	if (v != (BWN_MACCTL_GMODE | BWN_MACCTL_IHR_ON))
		goto error;

	FUNC3(sc);
	return (0);
error:
	FUNC3(sc);
	FUNC9(sc->sc_dev, "failed to validate the chipaccess\n");
	return (ENODEV);
}