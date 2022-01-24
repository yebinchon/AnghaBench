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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ixl_vsi {int /*<<< orphan*/  ctx; } ;
struct i40e_hw_port_stats {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  admin_irq; struct i40e_hw_port_stats stats; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct sysctl_ctx_list*,struct sysctl_oid_list*,struct i40e_hw_port_stats*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ixl_vsi*,struct sysctl_ctx_list*,char*) ; 

void
FUNC8(struct ixl_pf *pf)
{
	struct ixl_vsi *vsi = &pf->vsi;
	device_t dev = FUNC4(vsi->ctx);
	struct i40e_hw_port_stats *pf_stats = &pf->stats;

	struct sysctl_ctx_list *ctx = FUNC2(dev);
	struct sysctl_oid *tree = FUNC3(dev);
	struct sysctl_oid_list *child = FUNC1(tree);

	/* Driver statistics */
	FUNC0(ctx, child, OID_AUTO, "admin_irq",
			CTLFLAG_RD, &pf->admin_irq,
			"Admin Queue IRQs received");

	FUNC7(dev, vsi, ctx, "pf");

	FUNC5(dev, vsi);

	FUNC6(ctx, child, pf_stats);
}