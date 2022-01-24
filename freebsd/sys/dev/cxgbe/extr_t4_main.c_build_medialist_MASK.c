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
struct link_config {int supported; } ;
struct ifmedia {int /*<<< orphan*/  ifm_list; } ;
struct port_info {int flags; struct link_config link_cfg; struct ifmedia media; } ;

/* Variables and functions */
 int FIXED_IFMEDIA ; 
 int FW_PORT_CAP32_ANEG ; 
 int FUNC0 (int) ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int IFM_NONE ; 
 int IFM_UNKNOWN ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int M_FW_PORT_CAP32_SPEED ; 
 int /*<<< orphan*/  FUNC3 (struct port_info*) ; 
 int S_FW_PORT_CAP32_SPEED ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifmedia*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ifmedia*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifmedia*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifmedia*,int) ; 
 int FUNC10 (struct port_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct port_info*) ; 

__attribute__((used)) static void
FUNC12(struct port_info *pi)
{
	uint32_t ss, speed;
	int unknown, mword, bit;
	struct link_config *lc;
	struct ifmedia *ifm;

	FUNC3(pi);

	if (pi->flags & FIXED_IFMEDIA)
		return;

	/*
	 * Rebuild the ifmedia list.
	 */
	ifm = &pi->media;
	FUNC8(ifm);
	lc = &pi->link_cfg;
	ss = FUNC0(lc->supported); /* Supported Speeds */
	if (FUNC4(ss == 0)) {	/* not supposed to happen. */
		FUNC2(ss != 0);
no_media:
		FUNC2(FUNC1(&ifm->ifm_list));
		FUNC6(ifm, IFM_ETHER | IFM_NONE, 0, NULL);
		FUNC9(ifm, IFM_ETHER | IFM_NONE);
		return;
	}

	unknown = 0;
	for (bit = S_FW_PORT_CAP32_SPEED; bit < FUNC5(ss); bit++) {
		speed = 1 << bit;
		FUNC2(speed & M_FW_PORT_CAP32_SPEED);
		if (ss & speed) {
			mword = FUNC10(pi, speed);
			if (mword == IFM_NONE) {
				goto no_media;
			} else if (mword == IFM_UNKNOWN)
				unknown++;
			else
				FUNC7(ifm, IFM_ETHER | IFM_FDX | mword);
		}
	}
	if (unknown > 0) /* Add one unknown for all unknown media types. */
		FUNC7(ifm, IFM_ETHER | IFM_FDX | IFM_UNKNOWN);
	if (lc->supported & FW_PORT_CAP32_ANEG)
		FUNC6(ifm, IFM_ETHER | IFM_AUTO, 0, NULL);

	FUNC11(pi);
}