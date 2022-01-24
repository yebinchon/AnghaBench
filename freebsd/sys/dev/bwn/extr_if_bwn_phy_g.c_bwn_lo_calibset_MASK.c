#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct bwn_rfatt {int att; scalar_t__ padmix; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct bwn_phy_g {scalar_t__ pg_max_lb_gain; } ;
struct bwn_phy {int /*<<< orphan*/  chan; struct bwn_phy_g phy_g; } ;
struct bwn_mac {TYPE_1__* mac_sc; struct bwn_phy mac_phy; } ;
typedef  struct bwn_loctl {int att; scalar_t__ padmix; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } const bwn_loctl ;
struct bwn_lo_g_value {int /*<<< orphan*/  old_channel; int /*<<< orphan*/  member_0; } ;
struct bwn_lo_calib {int /*<<< orphan*/  calib_time; int /*<<< orphan*/  ctl; int /*<<< orphan*/  rfatt; int /*<<< orphan*/  bbatt; } ;
struct bwn_bbatt {int att; scalar_t__ padmix; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  loctl ;
struct TYPE_2__ {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bwn_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,struct bwn_rfatt const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,struct bwn_lo_g_value*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,struct bwn_lo_g_value*) ; 
 int FUNC7 (struct bwn_mac*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 struct bwn_lo_calib* FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct bwn_rfatt const*,int) ; 

__attribute__((used)) static struct bwn_lo_calib *
FUNC14(struct bwn_mac *mac,
    const struct bwn_bbatt *bbatt, const struct bwn_rfatt *rfatt)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	struct bwn_loctl loctl = { 0, 0 };
	struct bwn_lo_calib *cal;
	struct bwn_lo_g_value sval = { 0 };
	int rxgain;
	uint16_t pad, reg, value;

	sval.old_channel = phy->chan;
	FUNC9(mac);
	FUNC6(mac, &sval);

	reg = FUNC7(mac, &value, &pad);
	FUNC2(mac, 0x43, 0xfff0, rfatt->att);
	FUNC2(mac, reg, ~value, (rfatt->padmix ? value :0));

	rxgain = (rfatt->att * 2) + (bbatt->att / 2);
	if (rfatt->padmix)
		rxgain -= pad;
	if (FUNC1(phy))
		rxgain += pg->pg_max_lb_gain;
	FUNC3(mac, rxgain, FUNC1(phy));
	FUNC10(mac, bbatt->att);
	FUNC4(mac, &loctl, &rxgain);

	FUNC5(mac, &sval);
	FUNC8(mac);

	cal = FUNC12(sizeof(*cal), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (!cal) {
		FUNC11(mac->mac_sc->sc_dev, "out of memory\n");
		return (NULL);
	}
	FUNC13(&cal->bbatt, bbatt, sizeof(*bbatt));
	FUNC13(&cal->rfatt, rfatt, sizeof(*rfatt));
	FUNC13(&cal->ctl, &loctl, sizeof(loctl));

	FUNC0(cal->calib_time);

	return (cal);
}