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
struct ifnet {scalar_t__ if_mtu; } ;
struct adapter {int /*<<< orphan*/  media; int /*<<< orphan*/  hw; int /*<<< orphan*/  phy_layer; scalar_t__ max_frame_size; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 scalar_t__ ETHER_CRC_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(if_ctx_t ctx)
{
	struct ifnet   *ifp = FUNC3(ctx);
	struct adapter *adapter = FUNC4(ctx);

	FUNC1("ixgbe_setup_interface: begin");

	FUNC2(ifp, FUNC0(10));

	adapter->max_frame_size = ifp->if_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN;

	adapter->phy_layer = FUNC7(&adapter->hw);

	FUNC6(ctx);

	/* Autoselect media by default */
	FUNC5(adapter->media, IFM_ETHER | IFM_AUTO);

	return (0);
}