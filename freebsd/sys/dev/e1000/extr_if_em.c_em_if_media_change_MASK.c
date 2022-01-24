#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ifmedia {int ifm_media; } ;
struct TYPE_5__ {int /*<<< orphan*/  forced_speed_duplex; void* autoneg; } ;
struct TYPE_4__ {int /*<<< orphan*/  autoneg_advertised; } ;
struct TYPE_6__ {TYPE_2__ mac; TYPE_1__ phy; } ;
struct adapter {int /*<<< orphan*/  dev; TYPE_3__ hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISE_1000_FULL ; 
 int /*<<< orphan*/  ADVERTISE_100_FULL ; 
 int /*<<< orphan*/  ADVERTISE_100_HALF ; 
 int /*<<< orphan*/  ADVERTISE_10_FULL ; 
 int /*<<< orphan*/  ADVERTISE_10_HALF ; 
 int /*<<< orphan*/  AUTONEG_ADV_DEFAULT ; 
 void* DO_AUTO_NEG ; 
 int EINVAL ; 
 void* FALSE ; 
#define  IFM_1000_LX 133 
#define  IFM_1000_SX 132 
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
#define  IFM_AUTO 128 
 scalar_t__ IFM_ETHER ; 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ifmedia* FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC6(ctx);
	struct ifmedia *ifm = FUNC5(ctx);

	FUNC2("em_if_media_change: begin");

	if (FUNC1(ifm->ifm_media) != IFM_ETHER)
		return (EINVAL);

	switch (FUNC0(ifm->ifm_media)) {
	case IFM_AUTO:
		adapter->hw.mac.autoneg = DO_AUTO_NEG;
		adapter->hw.phy.autoneg_advertised = AUTONEG_ADV_DEFAULT;
		break;
	case IFM_1000_LX:
	case IFM_1000_SX:
	case IFM_1000_T:
		adapter->hw.mac.autoneg = DO_AUTO_NEG;
		adapter->hw.phy.autoneg_advertised = ADVERTISE_1000_FULL;
		break;
	case IFM_100_TX:
		adapter->hw.mac.autoneg = FALSE;
		adapter->hw.phy.autoneg_advertised = 0;
		if ((ifm->ifm_media & IFM_GMASK) == IFM_FDX)
			adapter->hw.mac.forced_speed_duplex = ADVERTISE_100_FULL;
		else
			adapter->hw.mac.forced_speed_duplex = ADVERTISE_100_HALF;
		break;
	case IFM_10_T:
		adapter->hw.mac.autoneg = FALSE;
		adapter->hw.phy.autoneg_advertised = 0;
		if ((ifm->ifm_media & IFM_GMASK) == IFM_FDX)
			adapter->hw.mac.forced_speed_duplex = ADVERTISE_10_FULL;
		else
			adapter->hw.mac.forced_speed_duplex = ADVERTISE_10_HALF;
		break;
	default:
		FUNC3(adapter->dev, "Unsupported media type\n");
	}

	FUNC4(ctx);

	return (0);
}