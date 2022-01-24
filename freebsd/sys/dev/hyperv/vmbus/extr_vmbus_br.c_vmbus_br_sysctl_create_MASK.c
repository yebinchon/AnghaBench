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
struct vmbus_br {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_OPAQUE ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct vmbus_br*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  vmbus_br_sysctl_state ; 
 int /*<<< orphan*/  vmbus_br_sysctl_state_bin ; 

void
FUNC4(struct sysctl_ctx_list *ctx, struct sysctl_oid *br_tree,
    struct vmbus_br *br, const char *name)
{
	struct sysctl_oid *tree;
	char desc[64];

	tree = FUNC0(ctx, FUNC2(br_tree), OID_AUTO,
	    name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
	if (tree == NULL)
		return;

	FUNC3(desc, sizeof(desc), "%s state", name);
	FUNC1(ctx, FUNC2(tree), OID_AUTO, "state",
	    CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE,
	    br, 0, vmbus_br_sysctl_state, "A", desc);

	FUNC3(desc, sizeof(desc), "%s binary state", name);
	FUNC1(ctx, FUNC2(tree), OID_AUTO, "state_bin",
	    CTLTYPE_OPAQUE | CTLFLAG_RD | CTLFLAG_MPSAFE,
	    br, 0, vmbus_br_sysctl_state_bin, "IU", desc);
}