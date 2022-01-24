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
struct TYPE_5__ {int /*<<< orphan*/  eswitched_err_free_bytes; int /*<<< orphan*/  eswitched_err_free_frames; int /*<<< orphan*/  eswitched_ucast_frames; int /*<<< orphan*/  eswitched_bcast_frames; int /*<<< orphan*/  eswitched_mcast_frames; int /*<<< orphan*/  eswitched_bytes; int /*<<< orphan*/  eswitched_frames; int /*<<< orphan*/  align_error; int /*<<< orphan*/  fcs_error; int /*<<< orphan*/  rcv_dropped; int /*<<< orphan*/  rcv_jabber; int /*<<< orphan*/  rcv_len_large; int /*<<< orphan*/  rcv_len_small; int /*<<< orphan*/  rcv_len_error; int /*<<< orphan*/  rcv_pkt_gt_1518bytes; int /*<<< orphan*/  rcv_pkt_lt_1518bytes; int /*<<< orphan*/  rcv_pkt_lt_1023bytes; int /*<<< orphan*/  rcv_pkt_lt_511bytes; int /*<<< orphan*/  rcv_pkt_lt_255bytes; int /*<<< orphan*/  rcv_pkt_lt_127bytes; int /*<<< orphan*/  rcv_pkt_lt_64bytes; int /*<<< orphan*/  rcv_cntrl_pkts; int /*<<< orphan*/  rcv_pause_frames; int /*<<< orphan*/  rcv_bcast_pkts; int /*<<< orphan*/  rcv_mcast_pkts; int /*<<< orphan*/  rcv_bytes; int /*<<< orphan*/  rcv_frames; int /*<<< orphan*/  xmt_pkt_gt_1518bytes; int /*<<< orphan*/  xmt_pkt_lt_1518bytes; int /*<<< orphan*/  xmt_pkt_lt_1023bytes; int /*<<< orphan*/  xmt_pkt_lt_511bytes; int /*<<< orphan*/  xmt_pkt_lt_255bytes; int /*<<< orphan*/  xmt_pkt_lt_127bytes; int /*<<< orphan*/  xmt_pkt_lt_64bytes; int /*<<< orphan*/  xmt_cntrl_pkts; int /*<<< orphan*/  xmt_pause_frames; int /*<<< orphan*/  xmt_bcast_pkts; int /*<<< orphan*/  xmt_mcast_pkts; int /*<<< orphan*/  xmt_bytes; int /*<<< orphan*/  xmt_frames; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
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

        ctx_oid = FUNC0(ctx, children, OID_AUTO, "stats_hw_mac",
                        CTLFLAG_RD, NULL, "stats_hw_mac");
        children = FUNC2(ctx_oid);

        FUNC1(ctx, children,
                OID_AUTO, "xmt_frames",
                CTLFLAG_RD, &ha->hw.mac.xmt_frames,
                "xmt_frames");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_bytes,
                "xmt_frames");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_mcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.xmt_mcast_pkts,
                "xmt_mcast_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_bcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.xmt_bcast_pkts,
                "xmt_bcast_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pause_frames",
                CTLFLAG_RD, &ha->hw.mac.xmt_pause_frames,
                "xmt_pause_frames");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_cntrl_pkts",
                CTLFLAG_RD, &ha->hw.mac.xmt_cntrl_pkts,
                "xmt_cntrl_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pkt_lt_64bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_64bytes,
                "xmt_pkt_lt_64bytes");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pkt_lt_127bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_127bytes,
                "xmt_pkt_lt_127bytes");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pkt_lt_255bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_255bytes,
                "xmt_pkt_lt_255bytes");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pkt_lt_511bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_511bytes,
                "xmt_pkt_lt_511bytes");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pkt_lt_1023bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_1023bytes,
                "xmt_pkt_lt_1023bytes");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pkt_lt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_1518bytes,
                "xmt_pkt_lt_1518bytes");

        FUNC1(ctx, children,
                OID_AUTO, "xmt_pkt_gt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_gt_1518bytes,
                "xmt_pkt_gt_1518bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_frames",
                CTLFLAG_RD, &ha->hw.mac.rcv_frames,
                "rcv_frames");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_bytes,
                "rcv_bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_mcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.rcv_mcast_pkts,
                "rcv_mcast_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_bcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.rcv_bcast_pkts,
                "rcv_bcast_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pause_frames",
                CTLFLAG_RD, &ha->hw.mac.rcv_pause_frames,
                "rcv_pause_frames");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_cntrl_pkts",
                CTLFLAG_RD, &ha->hw.mac.rcv_cntrl_pkts,
                "rcv_cntrl_pkts");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pkt_lt_64bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_64bytes,
                "rcv_pkt_lt_64bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pkt_lt_127bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_127bytes,
                "rcv_pkt_lt_127bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pkt_lt_255bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_255bytes,
                "rcv_pkt_lt_255bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pkt_lt_511bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_511bytes,
                "rcv_pkt_lt_511bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pkt_lt_1023bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_1023bytes,
                "rcv_pkt_lt_1023bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pkt_lt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_1518bytes,
                "rcv_pkt_lt_1518bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_pkt_gt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_gt_1518bytes,
                "rcv_pkt_gt_1518bytes");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_len_error",
                CTLFLAG_RD, &ha->hw.mac.rcv_len_error,
                "rcv_len_error");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_len_small",
                CTLFLAG_RD, &ha->hw.mac.rcv_len_small,
                "rcv_len_small");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_len_large",
                CTLFLAG_RD, &ha->hw.mac.rcv_len_large,
                "rcv_len_large");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_jabber",
                CTLFLAG_RD, &ha->hw.mac.rcv_jabber,
                "rcv_jabber");

        FUNC1(ctx, children,
                OID_AUTO, "rcv_dropped",
                CTLFLAG_RD, &ha->hw.mac.rcv_dropped,
                "rcv_dropped");

        FUNC1(ctx, children,
                OID_AUTO, "fcs_error",
                CTLFLAG_RD, &ha->hw.mac.fcs_error,
                "fcs_error");

        FUNC1(ctx, children,
                OID_AUTO, "align_error",
                CTLFLAG_RD, &ha->hw.mac.align_error,
                "align_error");

        FUNC1(ctx, children,
                OID_AUTO, "eswitched_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_frames,
                "eswitched_frames");

        FUNC1(ctx, children,
                OID_AUTO, "eswitched_bytes",
                CTLFLAG_RD, &ha->hw.mac.eswitched_bytes,
                "eswitched_bytes");

        FUNC1(ctx, children,
                OID_AUTO, "eswitched_mcast_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_mcast_frames,
                "eswitched_mcast_frames");

        FUNC1(ctx, children,
                OID_AUTO, "eswitched_bcast_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_bcast_frames,
                "eswitched_bcast_frames");

        FUNC1(ctx, children,
                OID_AUTO, "eswitched_ucast_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_ucast_frames,
                "eswitched_ucast_frames");

        FUNC1(ctx, children,
                OID_AUTO, "eswitched_err_free_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_err_free_frames,
                "eswitched_err_free_frames");

        FUNC1(ctx, children,
                OID_AUTO, "eswitched_err_free_bytes",
                CTLFLAG_RD, &ha->hw.mac.eswitched_err_free_bytes,
                "eswitched_err_free_bytes");

	return;
}