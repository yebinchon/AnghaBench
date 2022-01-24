#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_6__ {int num_tx_rings; TYPE_1__* xmt; } ;
struct TYPE_7__ {TYPE_2__ hw; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_3__ qla_host_t ;
typedef  int /*<<< orphan*/  name_str ;
struct TYPE_5__ {int /*<<< orphan*/  num_buffers; int /*<<< orphan*/  switch_pkts; int /*<<< orphan*/  pkts_dropped; int /*<<< orphan*/  errors; int /*<<< orphan*/  total_pkts; int /*<<< orphan*/  total_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC7(qla_host_t *ha)
{
        struct sysctl_ctx_list  *ctx;
        struct sysctl_oid_list  *children;
        struct sysctl_oid_list  *node_children;
        struct sysctl_oid       *ctx_oid;
        int                     i;
        uint8_t                 name_str[16];

        ctx = FUNC4(ha->pci_dev);
        children = FUNC2(FUNC5(ha->pci_dev));

        ctx_oid = FUNC0(ctx, children, OID_AUTO, "stats_hw_xmt",
                        CTLFLAG_RD, NULL, "stats_hw_xmt");
        children = FUNC2(ctx_oid);

        for (i = 0; i < ha->hw.num_tx_rings; i++) {

                FUNC3(name_str, (sizeof(uint8_t) * sizeof(name_str)));
                FUNC6(name_str, sizeof(name_str), "%d", i);

                ctx_oid = FUNC0(ctx, children, OID_AUTO, name_str,
                        CTLFLAG_RD, NULL, name_str);
                node_children = FUNC2(ctx_oid);

                /* Tx Related */

                FUNC1(ctx, node_children,
			OID_AUTO, "total_bytes",
                        CTLFLAG_RD, &ha->hw.xmt[i].total_bytes,
                        "total_bytes");

                FUNC1(ctx, node_children,
			OID_AUTO, "total_pkts",
                        CTLFLAG_RD, &ha->hw.xmt[i].total_pkts,
                        "total_pkts");

                FUNC1(ctx, node_children,
			OID_AUTO, "errors",
                        CTLFLAG_RD, &ha->hw.xmt[i].errors,
                        "errors");

                FUNC1(ctx, node_children,
			OID_AUTO, "pkts_dropped",
                        CTLFLAG_RD, &ha->hw.xmt[i].pkts_dropped,
                        "pkts_dropped");

                FUNC1(ctx, node_children,
			OID_AUTO, "switch_pkts",
                        CTLFLAG_RD, &ha->hw.xmt[i].switch_pkts,
                        "switch_pkts");

                FUNC1(ctx, node_children,
			OID_AUTO, "num_buffers",
                        CTLFLAG_RD, &ha->hw.xmt[i].num_buffers,
                        "num_buffers");
	}

	return;
}