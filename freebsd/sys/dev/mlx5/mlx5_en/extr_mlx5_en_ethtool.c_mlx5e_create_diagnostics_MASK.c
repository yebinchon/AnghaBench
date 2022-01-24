#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ array; } ;
struct TYPE_3__ {scalar_t__ array; } ;
struct mlx5e_priv {TYPE_2__ params_general; int /*<<< orphan*/  mdev; TYPE_1__ params_pci; struct sysctl_oid* sysctl_ifnet; struct sysctl_ctx_list sysctl_ctx; } ;
struct mlx5_core_diagnostics_entry {int /*<<< orphan*/  desc; int /*<<< orphan*/  counter_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int MLX5_CORE_GENERAL_DIAGNOSTICS_NUM ; 
 int MLX5_CORE_PCI_DIAGNOSTICS_NUM ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 struct mlx5_core_diagnostics_entry* mlx5_core_general_diagnostics_table ; 
 struct mlx5_core_diagnostics_entry* mlx5_core_pci_diagnostics_table ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mlx5e_priv *priv)
{
	struct mlx5_core_diagnostics_entry entry;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *node;
	int x;

	/* sysctl context we are using */
	ctx = &priv->sysctl_ctx;

	/* create root node */
	node = FUNC0(ctx,
	    FUNC2(priv->sysctl_ifnet), OID_AUTO,
	    "diagnostics", CTLFLAG_RD, NULL, "Diagnostics");
	if (node == NULL)
		return;

	/* create PCI diagnostics */
	for (x = 0; x != MLX5_CORE_PCI_DIAGNOSTICS_NUM; x++) {
		entry = mlx5_core_pci_diagnostics_table[x];
		if (FUNC3(priv->mdev, entry.counter_id) == 0)
			continue;
		FUNC1(ctx, FUNC2(node), OID_AUTO,
		    entry.desc, CTLFLAG_RD, priv->params_pci.array + x,
		    "PCI diagnostics counter");
	}

	/* create general diagnostics */
	for (x = 0; x != MLX5_CORE_GENERAL_DIAGNOSTICS_NUM; x++) {
		entry = mlx5_core_general_diagnostics_table[x];
		if (FUNC3(priv->mdev, entry.counter_id) == 0)
			continue;
		FUNC1(ctx, FUNC2(node), OID_AUTO,
		    entry.desc, CTLFLAG_RD, priv->params_general.array + x,
		    "General diagnostics counter");
	}
}