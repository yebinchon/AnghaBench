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
struct bwn_pio {int /*<<< orphan*/  rx; int /*<<< orphan*/  mcast; int /*<<< orphan*/ * wme; } ;
struct TYPE_2__ {struct bwn_pio pio; } ;
struct bwn_mac {TYPE_1__ mac_method; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_MACCTL ; 
 int BWN_MACCTL_BIGENDIAN ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_SHARED ; 
 int /*<<< orphan*/  BWN_SHARED_RX_PADOFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 size_t WME_AC_BE ; 
 size_t WME_AC_BK ; 
 size_t WME_AC_VI ; 
 size_t WME_AC_VO ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bwn_mac *mac)
{
	struct bwn_pio *pio = &mac->mac_method.pio;

	FUNC1(mac, BWN_MACCTL, FUNC0(mac, BWN_MACCTL)
	    & ~BWN_MACCTL_BIGENDIAN);
	FUNC4(mac, BWN_SHARED, BWN_SHARED_RX_PADOFFSET, 0);

	FUNC2(mac, &pio->wme[WME_AC_BK], 0);
	FUNC2(mac, &pio->wme[WME_AC_BE], 1);
	FUNC2(mac, &pio->wme[WME_AC_VI], 2);
	FUNC2(mac, &pio->wme[WME_AC_VO], 3);
	FUNC2(mac, &pio->mcast, 4);
	FUNC3(mac, &pio->rx, 0);
}