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
struct ixl_vsi {int /*<<< orphan*/  eth_stats; TYPE_1__* shared; int /*<<< orphan*/  num_tx_queues; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  ifp; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int /*<<< orphan*/  queues_enabled; int /*<<< orphan*/  init_state; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct i40e_eth_stats {int dummy; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  isc_ntxqsets; int /*<<< orphan*/  isc_nrxqsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_INIT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct iavf_sc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(if_ctx_t ctx)
{
	device_t dev;
	struct iavf_sc	*sc;
	struct i40e_hw	*hw;
	struct ixl_vsi *vsi;
	int error = 0;

	FUNC0(dev, "begin");

	dev = FUNC6(ctx);
	sc = FUNC8(ctx);
	vsi = &sc->vsi;
	vsi->ifp = FUNC7(ctx);
	hw = &sc->hw;

	/* Save off determined number of queues for interface */
	vsi->num_rx_queues = vsi->shared->isc_nrxqsets;
	vsi->num_tx_queues = vsi->shared->isc_ntxqsets;

	/* Setup the stack interface */
	FUNC5(dev, sc);

	FUNC0(dev, "Interface setup complete");

	/* Initialize statistics & add sysctls */
	FUNC2(&sc->vsi.eth_stats, sizeof(struct i40e_eth_stats));
	FUNC3(sc);

	sc->init_state = IAVF_INIT_READY;
	FUNC1(&sc->queues_enabled, 0);

	/* We want AQ enabled early for init */
	FUNC4(hw);

	FUNC0(dev, "end");

	return (error);
}