#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mbx_comp_msecs; } ;
struct TYPE_5__ {TYPE_1__ hw; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_2__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(qla_host_t *ha)
{
        struct sysctl_ctx_list  *ctx;
        struct sysctl_oid_list  *node_children;

        ctx = FUNC2(ha->pci_dev);
        node_children = FUNC1(FUNC3(ha->pci_dev));

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_lt_200ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[0],
		"mbx_completion_time_lt_200ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_200ms_400ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[1],
		"mbx_completion_time_200ms_400ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_400ms_600ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[2],
		"mbx_completion_time_400ms_600ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_600ms_800ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[3],
		"mbx_completion_time_600ms_800ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_800ms_1000ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[4],
		"mbx_completion_time_800ms_1000ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_1000ms_1200ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[5],
		"mbx_completion_time_1000ms_1200ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_1200ms_1400ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[6],
		"mbx_completion_time_1200ms_1400ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_1400ms_1600ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[7],
		"mbx_completion_time_1400ms_1600ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_1600ms_1800ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[8],
		"mbx_completion_time_1600ms_1800ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_1800ms_2000ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[9],
		"mbx_completion_time_1800ms_2000ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_2000ms_2200ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[10],
		"mbx_completion_time_2000ms_2200ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_2200ms_2400ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[11],
		"mbx_completion_time_2200ms_2400ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_2400ms_2600ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[12],
		"mbx_completion_time_2400ms_2600ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_2600ms_2800ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[13],
		"mbx_completion_time_2600ms_2800ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_2800ms_3000ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[14],
		"mbx_completion_time_2800ms_3000ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_3000ms_4000ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[15],
		"mbx_completion_time_3000ms_4000ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_time_4000ms_5000ms",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[16],
		"mbx_completion_time_4000ms_5000ms");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_host_mbx_cntrl_timeout",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[17],
		"mbx_completion_host_mbx_cntrl_timeout");

	FUNC0(ctx, node_children,
		OID_AUTO, "mbx_completion_fw_mbx_cntrl_timeout",
		CTLFLAG_RD, &ha->hw.mbx_comp_msecs[18],
		"mbx_completion_fw_mbx_cntrl_timeout");
	return;
}