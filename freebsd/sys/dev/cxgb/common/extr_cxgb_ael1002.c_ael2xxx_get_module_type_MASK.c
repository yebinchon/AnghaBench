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
struct cphy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODULE_DEV_ADDR ; 
 int FUNC0 (struct cphy*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cphy*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int phy_modtype_lr ; 
 int phy_modtype_lrm ; 
 int phy_modtype_sr ; 
 int phy_modtype_twinax ; 
 int phy_modtype_twinax_long ; 
 int phy_modtype_unknown ; 
 int phy_transtype_sfp ; 
 int phy_transtype_xfp ; 

__attribute__((used)) static int FUNC3(struct cphy *phy, int delay_ms)
{
	int v;

	if (delay_ms)
		FUNC2(delay_ms);

	v = FUNC1(phy);
	if (v == phy_transtype_sfp) {
		/* SFP: see SFF-8472 for below */

		v = FUNC0(phy, MODULE_DEV_ADDR, 3);
		if (v < 0)
			return v;

		if (v == 0x1)
			goto twinax;
		if (v == 0x10)
			return phy_modtype_sr;
		if (v == 0x20)
			return phy_modtype_lr;
		if (v == 0x40)
			return phy_modtype_lrm;

		v = FUNC0(phy, MODULE_DEV_ADDR, 8);
		if (v < 0)
			return v;
		if (v == 4) {
			v = FUNC0(phy, MODULE_DEV_ADDR, 60);
			if (v < 0)
				return v;
			if (v & 0x1)
				goto twinax;
		}

		v = FUNC0(phy, MODULE_DEV_ADDR, 6);
		if (v < 0)
			return v;
		if (v != 4)
			return phy_modtype_unknown;

		v = FUNC0(phy, MODULE_DEV_ADDR, 10);
		if (v < 0)
			return v;

		if (v & 0x80) {
twinax:
			v = FUNC0(phy, MODULE_DEV_ADDR, 0x12);
			if (v < 0)
				return v;
			return v > 10 ? phy_modtype_twinax_long :
			    phy_modtype_twinax;
		}
	} else if (v == phy_transtype_xfp) {
		/* XFP: See INF-8077i for details. */

		v = FUNC0(phy, MODULE_DEV_ADDR, 127);
		if (v < 0)
			return v;

		if (v != 1) {
			/* XXX: set page select to table 1 yourself */
			return phy_modtype_unknown;
		}

		v = FUNC0(phy, MODULE_DEV_ADDR, 131);
		if (v < 0)
			return v;
		v &= 0xf0;
		if (v == 0x10)
			return phy_modtype_lrm;
		if (v == 0x40)
			return phy_modtype_lr;
		if (v == 0x80)
			return phy_modtype_sr;
	}

	return phy_modtype_unknown;
}