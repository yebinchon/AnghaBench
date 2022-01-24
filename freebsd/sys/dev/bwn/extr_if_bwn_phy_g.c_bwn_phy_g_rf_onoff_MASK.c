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
typedef  int uint16_t ;
struct bwn_phy_g {int pg_flags; int pg_radioctx_over; int pg_radioctx_overval; } ;
struct bwn_phy {unsigned int chan; scalar_t__ gmode; scalar_t__ rf_on; struct bwn_phy_g phy_g; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int BWN_PHY_G_FLAG_RADIOCTX_VALID ; 
 int FUNC0 (struct bwn_mac*,int) ; 
 int BWN_PHY_RFOVER ; 
 int BWN_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,unsigned int,int) ; 

void
FUNC3(struct bwn_mac *mac, int on)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	unsigned int channel;
	uint16_t rfover, rfoverval;

	if (on) {
		if (phy->rf_on)
			return;

		FUNC1(mac, 0x15, 0x8000);
		FUNC1(mac, 0x15, 0xcc00);
		FUNC1(mac, 0x15, (phy->gmode ? 0xc0 : 0x0));
		if (pg->pg_flags & BWN_PHY_G_FLAG_RADIOCTX_VALID) {
			FUNC1(mac, BWN_PHY_RFOVER,
			    pg->pg_radioctx_over);
			FUNC1(mac, BWN_PHY_RFOVERVAL,
			    pg->pg_radioctx_overval);
			pg->pg_flags &= ~BWN_PHY_G_FLAG_RADIOCTX_VALID;
		}
		channel = phy->chan;
		FUNC2(mac, 6, 1);
		FUNC2(mac, channel, 0);
		return;
	}

	rfover = FUNC0(mac, BWN_PHY_RFOVER);
	rfoverval = FUNC0(mac, BWN_PHY_RFOVERVAL);
	pg->pg_radioctx_over = rfover;
	pg->pg_radioctx_overval = rfoverval;
	pg->pg_flags |= BWN_PHY_G_FLAG_RADIOCTX_VALID;
	FUNC1(mac, BWN_PHY_RFOVER, rfover | 0x008c);
	FUNC1(mac, BWN_PHY_RFOVERVAL, rfoverval & 0xff73);
}