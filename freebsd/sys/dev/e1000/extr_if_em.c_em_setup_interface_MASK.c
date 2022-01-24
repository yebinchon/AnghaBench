#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {scalar_t__ media_type; scalar_t__ type; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_2__ phy; TYPE_1__ mac; } ;
struct adapter {int tx_num_queues; int /*<<< orphan*/  media; TYPE_3__ hw; TYPE_4__* shared; } ;
typedef  TYPE_4__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_8__ {scalar_t__* isc_ntxd; } ;

/* Variables and functions */
 int IFM_1000_LX ; 
 int IFM_1000_SX ; 
 int IFM_1000_T ; 
 int IFM_100_TX ; 
 int IFM_10_T ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ e1000_82545 ; 
 scalar_t__ e1000_media_type_fiber ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 scalar_t__ e1000_phy_ife ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx)
{
	struct ifnet *ifp = FUNC3(ctx);
	struct adapter *adapter = FUNC4(ctx);
	if_softc_ctx_t scctx = adapter->shared;

	FUNC0("em_setup_interface: begin");

	/* Single Queue */
	if (adapter->tx_num_queues == 1) {
		FUNC1(ifp, scctx->isc_ntxd[0] - 1);
		FUNC2(ifp);
	}

	/*
	 * Specify the media types supported by this adapter and register
	 * callbacks to update media and link information
	 */
	if ((adapter->hw.phy.media_type == e1000_media_type_fiber) ||
	    (adapter->hw.phy.media_type == e1000_media_type_internal_serdes)) {
		u_char fiber_type = IFM_1000_SX;	/* default type */

		if (adapter->hw.mac.type == e1000_82545)
			fiber_type = IFM_1000_LX;
		FUNC5(adapter->media, IFM_ETHER | fiber_type | IFM_FDX, 0, NULL);
		FUNC5(adapter->media, IFM_ETHER | fiber_type, 0, NULL);
	} else {
		FUNC5(adapter->media, IFM_ETHER | IFM_10_T, 0, NULL);
		FUNC5(adapter->media, IFM_ETHER | IFM_10_T | IFM_FDX, 0, NULL);
		FUNC5(adapter->media, IFM_ETHER | IFM_100_TX, 0, NULL);
		FUNC5(adapter->media, IFM_ETHER | IFM_100_TX | IFM_FDX, 0, NULL);
		if (adapter->hw.phy.type != e1000_phy_ife) {
			FUNC5(adapter->media, IFM_ETHER | IFM_1000_T | IFM_FDX, 0, NULL);
			FUNC5(adapter->media, IFM_ETHER | IFM_1000_T, 0, NULL);
		}
	}
	FUNC5(adapter->media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC6(adapter->media, IFM_ETHER | IFM_AUTO);
	return (0);
}