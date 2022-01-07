
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int pkts_cnt_oversized; int pkts_droped_unknown; int lro_flows_active; int lro_flows_deleted; int lro_flows_added; int rds_prime_success; int rds_prime_trys; int invalid_mac_addr; int re1_fbq_error; int unxpctd_mcast_pkts; int pkts_dropped_no_rds; int oversized_pkts; int pkts_dropped_no_sds_host; int pkts_dropped_no_sds_card; int pkts_wo_acntxts; int ip_chksum_err; int sw_pkt_count; int lro_pkt_count; int total_pkts; int total_bytes; } ;
struct TYPE_6__ {TYPE_1__ rcv; } ;
struct TYPE_7__ {TYPE_2__ hw; int pci_dev; } ;
typedef TYPE_3__ qla_host_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
qlnx_add_hw_rcv_stats_sysctls(qla_host_t *ha)
{
        struct sysctl_ctx_list *ctx;
        struct sysctl_oid_list *children;
        struct sysctl_oid *ctx_oid;

        ctx = device_get_sysctl_ctx(ha->pci_dev);
        children = SYSCTL_CHILDREN(device_get_sysctl_tree(ha->pci_dev));

        ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "stats_hw_rcv",
                        CTLFLAG_RD, ((void*)0), "stats_hw_rcv");
        children = SYSCTL_CHILDREN(ctx_oid);

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "total_bytes",
                CTLFLAG_RD, &ha->hw.rcv.total_bytes,
                "total_bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "total_pkts",
                CTLFLAG_RD, &ha->hw.rcv.total_pkts,
                "total_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "lro_pkt_count",
                CTLFLAG_RD, &ha->hw.rcv.lro_pkt_count,
                "lro_pkt_count");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "sw_pkt_count",
                CTLFLAG_RD, &ha->hw.rcv.sw_pkt_count,
                "sw_pkt_count");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "ip_chksum_err",
                CTLFLAG_RD, &ha->hw.rcv.ip_chksum_err,
                "ip_chksum_err");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "pkts_wo_acntxts",
                CTLFLAG_RD, &ha->hw.rcv.pkts_wo_acntxts,
                "pkts_wo_acntxts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "pkts_dropped_no_sds_card",
                CTLFLAG_RD, &ha->hw.rcv.pkts_dropped_no_sds_card,
                "pkts_dropped_no_sds_card");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "pkts_dropped_no_sds_host",
                CTLFLAG_RD, &ha->hw.rcv.pkts_dropped_no_sds_host,
                "pkts_dropped_no_sds_host");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "oversized_pkts",
                CTLFLAG_RD, &ha->hw.rcv.oversized_pkts,
                "oversized_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "pkts_dropped_no_rds",
                CTLFLAG_RD, &ha->hw.rcv.pkts_dropped_no_rds,
                "pkts_dropped_no_rds");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "unxpctd_mcast_pkts",
                CTLFLAG_RD, &ha->hw.rcv.unxpctd_mcast_pkts,
                "unxpctd_mcast_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "re1_fbq_error",
                CTLFLAG_RD, &ha->hw.rcv.re1_fbq_error,
                "re1_fbq_error");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "invalid_mac_addr",
                CTLFLAG_RD, &ha->hw.rcv.invalid_mac_addr,
                "invalid_mac_addr");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rds_prime_trys",
                CTLFLAG_RD, &ha->hw.rcv.rds_prime_trys,
                "rds_prime_trys");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rds_prime_success",
                CTLFLAG_RD, &ha->hw.rcv.rds_prime_success,
                "rds_prime_success");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "lro_flows_added",
                CTLFLAG_RD, &ha->hw.rcv.lro_flows_added,
                "lro_flows_added");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "lro_flows_deleted",
                CTLFLAG_RD, &ha->hw.rcv.lro_flows_deleted,
                "lro_flows_deleted");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "lro_flows_active",
                CTLFLAG_RD, &ha->hw.rcv.lro_flows_active,
                "lro_flows_active");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "pkts_droped_unknown",
                CTLFLAG_RD, &ha->hw.rcv.pkts_droped_unknown,
                "pkts_droped_unknown");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "pkts_cnt_oversized",
                CTLFLAG_RD, &ha->hw.rcv.pkts_cnt_oversized,
                "pkts_cnt_oversized");

 return;
}
