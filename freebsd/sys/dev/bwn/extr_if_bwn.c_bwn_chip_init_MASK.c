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
typedef  int uint32_t ;
typedef  int u_int ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_phy {scalar_t__ type; int /*<<< orphan*/  (* set_antenna ) (struct bwn_mac*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_im ) (struct bwn_mac*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* switch_analog ) (struct bwn_mac*,int) ;scalar_t__ gmode; } ;
struct bwn_mac {struct bwn_phy mac_phy; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLOCK_HT ; 
 int /*<<< orphan*/  BWN_ANT_DEFAULT ; 
 int BWN_DMA0_INTR_MASK ; 
 int BWN_DMA1_INTR_MASK ; 
 int BWN_DMA2_INTR_MASK ; 
 int BWN_DMA3_INTR_MASK ; 
 int BWN_DMA4_INTR_MASK ; 
 int BWN_DMA5_INTR_MASK ; 
 int /*<<< orphan*/  BWN_IMMODE_NONE ; 
 int BWN_INTR_REASON ; 
 int BWN_MACCTL ; 
 int BWN_MACCTL_GMODE ; 
 int BWN_MACCTL_IHR_ON ; 
 int BWN_MACCTL_SHM_ON ; 
 int BWN_MACCTL_STA ; 
 scalar_t__ BWN_PHYTYPE_B ; 
 int BWN_POWERUP_DELAY ; 
 int FUNC0 (struct bwn_mac*,int) ; 
 int FUNC1 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  BWN_SHARED ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int) ; 
 int ENXIO ; 
 int UINT16_MAX ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bwn_mac*) ; 
 int FUNC7 (struct bwn_mac*) ; 
 int FUNC8 (struct bwn_mac*) ; 
 int FUNC9 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int) ; 
 int FUNC11 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct bwn_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_phy *phy = &mac->mac_phy;
	uint32_t macctl;
	u_int delay;
	int error;

	macctl = BWN_MACCTL_IHR_ON | BWN_MACCTL_SHM_ON | BWN_MACCTL_STA;
	if (phy->gmode)
		macctl |= BWN_MACCTL_GMODE;
	FUNC3(mac, BWN_MACCTL, macctl);

	error = FUNC6(mac);
	if (error)
		return (error);
	error = FUNC8(mac);
	if (error)
		return (error);

	error = FUNC9(mac);
	if (error)
		return (error);

	error = FUNC7(mac);
	if (error)
		return (error);

	phy->switch_analog(mac, 1);
	error = FUNC11(mac);
	if (error)
		return (error);

	if (phy->set_im)
		phy->set_im(mac, BWN_IMMODE_NONE);
	if (phy->set_antenna)
		phy->set_antenna(mac, BWN_ANT_DEFAULT);
	FUNC13(mac, BWN_ANT_DEFAULT);

	if (phy->type == BWN_PHYTYPE_B)
		FUNC2(mac, 0x005e, FUNC0(mac, 0x005e) | 0x0004);
	FUNC3(mac, 0x0100, 0x01000000);
	if (FUNC5(sc->sc_dev) < 5)
		FUNC3(mac, 0x010c, 0x01000000);

	FUNC3(mac, BWN_MACCTL,
	    FUNC1(mac, BWN_MACCTL) & ~BWN_MACCTL_STA);
	FUNC3(mac, BWN_MACCTL,
	    FUNC1(mac, BWN_MACCTL) | BWN_MACCTL_STA);
	FUNC14(mac, BWN_SHARED, 0x0074, 0x0000);

	FUNC12(mac);
	if (FUNC5(sc->sc_dev) < 3) {
		FUNC2(mac, 0x060e, 0x0000);
		FUNC2(mac, 0x0610, 0x8000);
		FUNC2(mac, 0x0604, 0x0000);
		FUNC2(mac, 0x0606, 0x0200);
	} else {
		FUNC3(mac, 0x0188, 0x80000000);
		FUNC3(mac, 0x018c, 0x02000000);
	}
	FUNC3(mac, BWN_INTR_REASON, 0x00004000);
	FUNC3(mac, BWN_DMA0_INTR_MASK, 0x0001dc00);
	FUNC3(mac, BWN_DMA1_INTR_MASK, 0x0000dc00);
	FUNC3(mac, BWN_DMA2_INTR_MASK, 0x0000dc00);
	FUNC3(mac, BWN_DMA3_INTR_MASK, 0x0001dc00);
	FUNC3(mac, BWN_DMA4_INTR_MASK, 0x0000dc00);
	FUNC3(mac, BWN_DMA5_INTR_MASK, 0x0000dc00);

	FUNC10(mac, true);

	/* Provide the HT clock transition latency to the MAC core */
	error = FUNC4(sc->sc_dev, BHND_CLOCK_HT, &delay);
	if (error) {
		FUNC15(sc->sc_dev, "failed to fetch HT clock latency: "
		    "%d\n", error);
		return (error);
	}

	if (delay > UINT16_MAX) {
		FUNC15(sc->sc_dev, "invalid HT clock latency: %u\n",
		    delay);
		return (ENXIO);
	}

	FUNC2(mac, BWN_POWERUP_DELAY, delay);
	return (0);
}