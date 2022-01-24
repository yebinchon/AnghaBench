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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkts_cnt_oversized; int /*<<< orphan*/  pkts_droped_unknown; int /*<<< orphan*/  lro_flows_active; int /*<<< orphan*/  lro_flows_deleted; int /*<<< orphan*/  lro_flows_added; int /*<<< orphan*/  rds_prime_success; int /*<<< orphan*/  rds_prime_trys; int /*<<< orphan*/  invalid_mac_addr; int /*<<< orphan*/  re1_fbq_error; int /*<<< orphan*/  unxpctd_mcast_pkts; int /*<<< orphan*/  pkts_dropped_no_rds; int /*<<< orphan*/  oversized_pkts; int /*<<< orphan*/  pkts_dropped_no_sds_host; int /*<<< orphan*/  pkts_dropped_no_sds_card; int /*<<< orphan*/  pkts_wo_acntxts; int /*<<< orphan*/  ip_chksum_err; int /*<<< orphan*/  sw_pkt_count; int /*<<< orphan*/  lro_pkt_count; int /*<<< orphan*/  total_pkts; int /*<<< orphan*/  total_bytes; } ;
struct TYPE_6__ {TYPE_1__ rcv; } ;
struct TYPE_7__ {TYPE_2__ hw; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_3__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(qla_host_t *ha)
{
        struct sysctl_ctx_list  *ctx;
        struct sysctl_oid_list  *children;
        struct sysctl_oid       *ctx_oid;

        ctx = FUNC3(ha->pci_dev);
        children = FUNC2(FUNC4(ha->pci_dev));

        ctx_oid = FUNC0(ctx, children, OID_AUTO, "stats_hw_rcv",
                        CTLFLAG_RD, NULL, "stats_hw_rcv");
        children = FUNC2(ctx_oid);

        FUNC1(ctx, children,
                OID_AUTO, "total_bytes",
                CTLFLAG_RD, &ha->hw.rcv.total_bytes,
                "total_bytes");

        FUNC1(ctx, children,
                OID_AUTO, "total_pkts",
                CTLFLAG_RD, &ha->hw.rcv.total_pkts,
                "total_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "lro_pkt_count",
                CTLFLAG_RD, &ha->hw.rcv.lro_pkt_count,
                "lro_pkt_count");

        FUNC1(ctx, children,
                OID_AUTO, "sw_pkt_count",
                CTLFLAG_RD, &ha->hw.rcv.sw_pkt_count,
                "sw_pkt_count");

        FUNC1(ctx, children,
                OID_AUTO, "ip_chksum_err",
                CTLFLAG_RD, &ha->hw.rcv.ip_chksum_err,
                "ip_chksum_err");

        FUNC1(ctx, children,
                OID_AUTO, "pkts_wo_acntxts",
                CTLFLAG_RD, &ha->hw.rcv.pkts_wo_acntxts,
                "pkts_wo_acntxts");

        FUNC1(ctx, children,
                OID_AUTO, "pkts_dropped_no_sds_card",
                CTLFLAG_RD, &ha->hw.rcv.pkts_dropped_no_sds_card,
                "pkts_dropped_no_sds_card");

        FUNC1(ctx, children,
                OID_AUTO, "pkts_dropped_no_sds_host",
                CTLFLAG_RD, &ha->hw.rcv.pkts_dropped_no_sds_host,
                "pkts_dropped_no_sds_host");

        FUNC1(ctx, children,
                OID_AUTO, "oversized_pkts",
                CTLFLAG_RD, &ha->hw.rcv.oversized_pkts,
                "oversized_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "pkts_dropped_no_rds",
                CTLFLAG_RD, &ha->hw.rcv.pkts_dropped_no_rds,
                "pkts_dropped_no_rds");

        FUNC1(ctx, children,
                OID_AUTO, "unxpctd_mcast_pkts",
                CTLFLAG_RD, &ha->hw.rcv.unxpctd_mcast_pkts,
                "unxpctd_mcast_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "re1_fbq_error",
                CTLFLAG_RD, &ha->hw.rcv.re1_fbq_error,
                "re1_fbq_error");

        FUNC1(ctx, children,
                OID_AUTO, "invalid_mac_addr",
                CTLFLAG_RD, &ha->hw.rcv.invalid_mac_addr,
                "invalid_mac_addr");

        FUNC1(ctx, children,
                OID_AUTO, "rds_prime_trys",
                CTLFLAG_RD, &ha->hw.rcv.rds_prime_trys,
                "rds_prime_trys");

        FUNC1(ctx, children,
                OID_AUTO, "rds_prime_success",
                CTLFLAG_RD, &ha->hw.rcv.rds_prime_success,
                "rds_prime_success");

        FUNC1(ctx, children,
                OID_AUTO, "lro_flows_added",
                CTLFLAG_RD, &ha->hw.rcv.lro_flows_added,
                "lro_flows_added");

        FUNC1(ctx, children,
                OID_AUTO, "lro_flows_deleted",
                CTLFLAG_RD, &ha->hw.rcv.lro_flows_deleted,
                "lro_flows_deleted");

        FUNC1(ctx, children,
                OID_AUTO, "lro_flows_active",
                CTLFLAG_RD, &ha->hw.rcv.lro_flows_active,
                "lro_flows_active");

        FUNC1(ctx, children,
                OID_AUTO, "pkts_droped_unknown",
                CTLFLAG_RD, &ha->hw.rcv.pkts_droped_unknown,
                "pkts_droped_unknown");

        FUNC1(ctx, children,
                OID_AUTO, "pkts_cnt_oversized",
                CTLFLAG_RD, &ha->hw.rcv.pkts_cnt_oversized,
                "pkts_cnt_oversized");

	return;
}