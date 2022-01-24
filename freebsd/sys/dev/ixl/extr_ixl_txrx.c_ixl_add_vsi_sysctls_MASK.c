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
struct ixl_vsi {int /*<<< orphan*/  eth_stats; struct sysctl_oid* vsi_node; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_oid* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ *) ; 

void
FUNC4(device_t dev, struct ixl_vsi *vsi,
    struct sysctl_ctx_list *ctx, const char *sysctl_name)
{
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;
	struct sysctl_oid_list *vsi_list;

	tree = FUNC2(dev);
	child = FUNC1(tree);
	vsi->vsi_node = FUNC0(ctx, child, OID_AUTO, sysctl_name,
				   CTLFLAG_RD, NULL, "VSI Number");
	vsi_list = FUNC1(vsi->vsi_node);

	FUNC3(ctx, vsi_list, &vsi->eth_stats);
}