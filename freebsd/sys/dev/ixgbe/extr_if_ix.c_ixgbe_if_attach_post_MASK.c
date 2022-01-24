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
struct ixgbe_hw {int dummy; } ;
struct adapter {scalar_t__ intr_type; int feat_cap; int /*<<< orphan*/  advertise; scalar_t__ dmac; int /*<<< orphan*/ * mta; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ IFLIB_INTR_LEGACY ; 
 int IXGBE_FEATURE_LEGACY_IRQ ; 
 int IXGBE_FEATURE_SRIOV ; 
 int MAX_NUM_MULTICAST_ADDRESSES ; 
 int /*<<< orphan*/  M_IXGBE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  ixgbe_advertise_speed ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*) ; 
 int /*<<< orphan*/ * FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(if_ctx_t ctx)
{
	device_t dev;
	struct adapter  *adapter;
	struct ixgbe_hw *hw;
	int             error = 0;

	dev = FUNC1(ctx);
	adapter = FUNC2(ctx);
	hw = &adapter->hw;


	if (adapter->intr_type == IFLIB_INTR_LEGACY &&
		(adapter->feat_cap & IXGBE_FEATURE_LEGACY_IRQ) == 0) {
		FUNC0(dev, "Device does not support legacy interrupts");
		error = ENXIO;
		goto err;
	}

	/* Allocate multicast array memory. */
	adapter->mta = FUNC16(sizeof(*adapter->mta) *
	                      MAX_NUM_MULTICAST_ADDRESSES, M_IXGBE, M_NOWAIT);
	if (adapter->mta == NULL) {
		FUNC0(dev, "Can not allocate multicast setup array\n");
		error = ENOMEM;
		goto err;
	}

	/* hw.ix defaults init */
	FUNC12(adapter, ixgbe_advertise_speed);

	/* Enable the optics for 82599 SFP+ fiber */
	FUNC7(hw);

	/* Enable power to the phy. */
	FUNC13(hw, TRUE);

	FUNC11(adapter);

	error = FUNC14(ctx);
	if (error) {
		FUNC0(dev, "Interface setup failed: %d\n", error);
		goto err;
	}

	FUNC10(ctx);

	/* Initialize statistics */
	FUNC15(adapter);
	FUNC4(adapter);

	/* Check PCIE slot type/speed/width */
	FUNC9(adapter);

	/*
	 * Do time init and sysctl init here, but
	 * only on the first port of a bypass adapter.
	 */
	FUNC5(adapter);

	/* Set an initial dmac value */
	adapter->dmac = 0;
	/* Set initial advertised speeds (if applicable) */
	adapter->advertise = FUNC8(adapter);

	if (adapter->feat_cap & IXGBE_FEATURE_SRIOV)
		FUNC6(dev, &error);

	/* Add sysctls */
	FUNC3(ctx);

	return (0);
err:
	return (error);
}