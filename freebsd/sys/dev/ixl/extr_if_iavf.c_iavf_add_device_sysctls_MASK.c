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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ixl_vsi {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  debug_mask; } ;
struct iavf_sc {int /*<<< orphan*/  dbg_mask; TYPE_1__ hw; int /*<<< orphan*/  dev; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLFLAG_SKIP ; 
 int CTLFLAG_WR ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct iavf_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iavf_sysctl_current_speed ; 
 int /*<<< orphan*/  iavf_sysctl_queue_interrupt_table ; 
 int /*<<< orphan*/  iavf_sysctl_rx_itr ; 
 int /*<<< orphan*/  iavf_sysctl_sw_filter_list ; 
 int /*<<< orphan*/  iavf_sysctl_tx_itr ; 
 int /*<<< orphan*/  iavf_sysctl_vf_reset ; 
 int /*<<< orphan*/  iavf_sysctl_vflr_reset ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ixl_vsi*,struct sysctl_ctx_list*,char*) ; 

__attribute__((used)) static void
FUNC8(struct iavf_sc *sc)
{
	struct ixl_vsi *vsi = &sc->vsi;
	device_t dev = sc->dev;

	struct sysctl_ctx_list *ctx = FUNC4(dev);
	struct sysctl_oid_list *ctx_list =
	    FUNC3(FUNC5(dev));
	struct sysctl_oid *debug_node;
	struct sysctl_oid_list *debug_list;

	FUNC1(ctx, ctx_list,
	    OID_AUTO, "current_speed", CTLTYPE_STRING | CTLFLAG_RD,
	    sc, 0, iavf_sysctl_current_speed, "A", "Current Port Speed");

	FUNC1(ctx, ctx_list,
	    OID_AUTO, "tx_itr", CTLTYPE_INT | CTLFLAG_RW,
	    sc, 0, iavf_sysctl_tx_itr, "I",
	    "Immediately set TX ITR value for all queues");

	FUNC1(ctx, ctx_list,
	    OID_AUTO, "rx_itr", CTLTYPE_INT | CTLFLAG_RW,
	    sc, 0, iavf_sysctl_rx_itr, "I",
	    "Immediately set RX ITR value for all queues");

	/* Add sysctls meant to print debug information, but don't list them
	 * in "sysctl -a" output. */
	debug_node = FUNC0(ctx, ctx_list,
	    OID_AUTO, "debug", CTLFLAG_RD | CTLFLAG_SKIP, NULL, "Debug Sysctls");
	debug_list = FUNC3(debug_node);

	FUNC2(ctx, debug_list,
	    OID_AUTO, "shared_debug_mask", CTLFLAG_RW,
	    &sc->hw.debug_mask, 0, "Shared code debug message level");

	FUNC2(ctx, debug_list,
	    OID_AUTO, "core_debug_mask", CTLFLAG_RW,
	    &sc->dbg_mask, 0, "Non-shared code debug message level");

	FUNC1(ctx, debug_list,
	    OID_AUTO, "filter_list", CTLTYPE_STRING | CTLFLAG_RD,
	    sc, 0, iavf_sysctl_sw_filter_list, "A", "SW Filter List");

	FUNC1(ctx, debug_list,
	    OID_AUTO, "queue_interrupt_table", CTLTYPE_STRING | CTLFLAG_RD,
	    sc, 0, iavf_sysctl_queue_interrupt_table, "A", "View MSI-X indices for TX/RX queues");

	FUNC1(ctx, debug_list,
	    OID_AUTO, "do_vf_reset", CTLTYPE_INT | CTLFLAG_WR,
	    sc, 0, iavf_sysctl_vf_reset, "A", "Request a VF reset from PF");

	FUNC1(ctx, debug_list,
	    OID_AUTO, "do_vflr_reset", CTLTYPE_INT | CTLFLAG_WR,
	    sc, 0, iavf_sysctl_vflr_reset, "A", "Request a VFLR reset from HW");

	/* Add stats sysctls */
	FUNC7(dev, vsi, ctx, "vsi");
	FUNC6(dev, vsi);

}