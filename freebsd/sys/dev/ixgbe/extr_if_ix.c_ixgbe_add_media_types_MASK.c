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
typedef  int u64 ;
struct TYPE_2__ {scalar_t__ multispeed_fiber; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_1__ phy; } ;
struct adapter {int phy_layer; int /*<<< orphan*/  media; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFM_1000_CX ; 
 int IFM_1000_KX ; 
 int IFM_1000_LX ; 
 int IFM_1000_SX ; 
 int IFM_1000_T ; 
 int IFM_100_TX ; 
 int IFM_10G_CX4 ; 
 int IFM_10G_KR ; 
 int IFM_10G_KX4 ; 
 int IFM_10G_LR ; 
 int IFM_10G_SR ; 
 int IFM_10G_T ; 
 int IFM_10G_TWINAX ; 
 int IFM_10_T ; 
 int IFM_2500_KX ; 
 int IFM_2500_SX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 scalar_t__ IXGBE_DEV_ID_82598AT ; 
 int IXGBE_PHYSICAL_LAYER_1000BASE_BX ; 
 int IXGBE_PHYSICAL_LAYER_1000BASE_KX ; 
 int IXGBE_PHYSICAL_LAYER_1000BASE_SX ; 
 int IXGBE_PHYSICAL_LAYER_1000BASE_T ; 
 int IXGBE_PHYSICAL_LAYER_100BASE_TX ; 
 int IXGBE_PHYSICAL_LAYER_10BASE_T ; 
 int IXGBE_PHYSICAL_LAYER_10GBASE_CX4 ; 
 int IXGBE_PHYSICAL_LAYER_10GBASE_KR ; 
 int IXGBE_PHYSICAL_LAYER_10GBASE_KX4 ; 
 int IXGBE_PHYSICAL_LAYER_10GBASE_LR ; 
 int IXGBE_PHYSICAL_LAYER_10GBASE_SR ; 
 int IXGBE_PHYSICAL_LAYER_10GBASE_T ; 
 int IXGBE_PHYSICAL_LAYER_2500BASE_KX ; 
 int IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA ; 
 int IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ixgbe_hw*) ; 

__attribute__((used)) static void
FUNC5(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC2(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	device_t        dev = FUNC1(ctx);
	u64             layer;

	layer = adapter->phy_layer = FUNC4(hw);

	/* Media types with matching FreeBSD media defines */
	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_T)
		FUNC3(adapter->media, IFM_ETHER | IFM_10G_T, 0, NULL);
	if (layer & IXGBE_PHYSICAL_LAYER_1000BASE_T)
		FUNC3(adapter->media, IFM_ETHER | IFM_1000_T, 0, NULL);
	if (layer & IXGBE_PHYSICAL_LAYER_100BASE_TX)
		FUNC3(adapter->media, IFM_ETHER | IFM_100_TX, 0, NULL);
	if (layer & IXGBE_PHYSICAL_LAYER_10BASE_T)
		FUNC3(adapter->media, IFM_ETHER | IFM_10_T, 0, NULL);

	if (layer & IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU ||
	    layer & IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA)
		FUNC3(adapter->media, IFM_ETHER | IFM_10G_TWINAX, 0,
		    NULL);

	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_LR) {
		FUNC3(adapter->media, IFM_ETHER | IFM_10G_LR, 0, NULL);
		if (hw->phy.multispeed_fiber)
			FUNC3(adapter->media, IFM_ETHER | IFM_1000_LX, 0,
			    NULL);
	}
	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_SR) {
		FUNC3(adapter->media, IFM_ETHER | IFM_10G_SR, 0, NULL);
		if (hw->phy.multispeed_fiber)
			FUNC3(adapter->media, IFM_ETHER | IFM_1000_SX, 0,
			    NULL);
	} else if (layer & IXGBE_PHYSICAL_LAYER_1000BASE_SX)
		FUNC3(adapter->media, IFM_ETHER | IFM_1000_SX, 0, NULL);
	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_CX4)
		FUNC3(adapter->media, IFM_ETHER | IFM_10G_CX4, 0, NULL);

#ifdef IFM_ETH_XTYPE
	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_KR)
		ifmedia_add(adapter->media, IFM_ETHER | IFM_10G_KR, 0, NULL);
	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_KX4)
		ifmedia_add( adapter->media, IFM_ETHER | IFM_10G_KX4, 0, NULL);
	if (layer & IXGBE_PHYSICAL_LAYER_1000BASE_KX)
		ifmedia_add(adapter->media, IFM_ETHER | IFM_1000_KX, 0, NULL);
	if (layer & IXGBE_PHYSICAL_LAYER_2500BASE_KX)
		ifmedia_add(adapter->media, IFM_ETHER | IFM_2500_KX, 0, NULL);
#else
	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_KR) {
		FUNC0(dev, "Media supported: 10GbaseKR\n");
		FUNC0(dev, "10GbaseKR mapped to 10GbaseSR\n");
		FUNC3(adapter->media, IFM_ETHER | IFM_10G_SR, 0, NULL);
	}
	if (layer & IXGBE_PHYSICAL_LAYER_10GBASE_KX4) {
		FUNC0(dev, "Media supported: 10GbaseKX4\n");
		FUNC0(dev, "10GbaseKX4 mapped to 10GbaseCX4\n");
		FUNC3(adapter->media, IFM_ETHER | IFM_10G_CX4, 0, NULL);
	}
	if (layer & IXGBE_PHYSICAL_LAYER_1000BASE_KX) {
		FUNC0(dev, "Media supported: 1000baseKX\n");
		FUNC0(dev, "1000baseKX mapped to 1000baseCX\n");
		FUNC3(adapter->media, IFM_ETHER | IFM_1000_CX, 0, NULL);
	}
	if (layer & IXGBE_PHYSICAL_LAYER_2500BASE_KX) {
		FUNC0(dev, "Media supported: 2500baseKX\n");
		FUNC0(dev, "2500baseKX mapped to 2500baseSX\n");
		FUNC3(adapter->media, IFM_ETHER | IFM_2500_SX, 0, NULL);
	}
#endif
	if (layer & IXGBE_PHYSICAL_LAYER_1000BASE_BX)
		FUNC0(dev, "Media supported: 1000baseBX\n");

	if (hw->device_id == IXGBE_DEV_ID_82598AT) {
		FUNC3(adapter->media, IFM_ETHER | IFM_1000_T | IFM_FDX,
		    0, NULL);
		FUNC3(adapter->media, IFM_ETHER | IFM_1000_T, 0, NULL);
	}

	FUNC3(adapter->media, IFM_ETHER | IFM_AUTO, 0, NULL);
}