#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sp_interrupts; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(qlnx_host_t *ha)
{
        struct sysctl_ctx_list	*ctx;
        struct sysctl_oid_list	*children;
	struct sysctl_oid	*ctx_oid;

        ctx = FUNC3(ha->pci_dev);
	children = FUNC2(FUNC4(ha->pci_dev));

	ctx_oid = FUNC0(ctx, children, OID_AUTO, "spstat",
			CTLFLAG_RD, NULL, "spstat");
        children = FUNC2(ctx_oid);

	FUNC1(ctx, children,
                OID_AUTO, "sp_interrupts",
                CTLFLAG_RD, &ha->sp_interrupts,
                "No. of slowpath interrupts");

	return;
}