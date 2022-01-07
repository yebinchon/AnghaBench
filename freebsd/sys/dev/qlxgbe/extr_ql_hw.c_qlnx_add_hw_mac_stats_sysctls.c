
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
struct TYPE_5__ {int eswitched_err_free_bytes; int eswitched_err_free_frames; int eswitched_ucast_frames; int eswitched_bcast_frames; int eswitched_mcast_frames; int eswitched_bytes; int eswitched_frames; int align_error; int fcs_error; int rcv_dropped; int rcv_jabber; int rcv_len_large; int rcv_len_small; int rcv_len_error; int rcv_pkt_gt_1518bytes; int rcv_pkt_lt_1518bytes; int rcv_pkt_lt_1023bytes; int rcv_pkt_lt_511bytes; int rcv_pkt_lt_255bytes; int rcv_pkt_lt_127bytes; int rcv_pkt_lt_64bytes; int rcv_cntrl_pkts; int rcv_pause_frames; int rcv_bcast_pkts; int rcv_mcast_pkts; int rcv_bytes; int rcv_frames; int xmt_pkt_gt_1518bytes; int xmt_pkt_lt_1518bytes; int xmt_pkt_lt_1023bytes; int xmt_pkt_lt_511bytes; int xmt_pkt_lt_255bytes; int xmt_pkt_lt_127bytes; int xmt_pkt_lt_64bytes; int xmt_cntrl_pkts; int xmt_pause_frames; int xmt_bcast_pkts; int xmt_mcast_pkts; int xmt_bytes; int xmt_frames; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
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
qlnx_add_hw_mac_stats_sysctls(qla_host_t *ha)
{
        struct sysctl_ctx_list *ctx;
        struct sysctl_oid_list *children;
        struct sysctl_oid *ctx_oid;

        ctx = device_get_sysctl_ctx(ha->pci_dev);
        children = SYSCTL_CHILDREN(device_get_sysctl_tree(ha->pci_dev));

        ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "stats_hw_mac",
                        CTLFLAG_RD, ((void*)0), "stats_hw_mac");
        children = SYSCTL_CHILDREN(ctx_oid);

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_frames",
                CTLFLAG_RD, &ha->hw.mac.xmt_frames,
                "xmt_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_bytes,
                "xmt_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_mcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.xmt_mcast_pkts,
                "xmt_mcast_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_bcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.xmt_bcast_pkts,
                "xmt_bcast_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pause_frames",
                CTLFLAG_RD, &ha->hw.mac.xmt_pause_frames,
                "xmt_pause_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_cntrl_pkts",
                CTLFLAG_RD, &ha->hw.mac.xmt_cntrl_pkts,
                "xmt_cntrl_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pkt_lt_64bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_64bytes,
                "xmt_pkt_lt_64bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pkt_lt_127bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_127bytes,
                "xmt_pkt_lt_127bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pkt_lt_255bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_255bytes,
                "xmt_pkt_lt_255bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pkt_lt_511bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_511bytes,
                "xmt_pkt_lt_511bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pkt_lt_1023bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_1023bytes,
                "xmt_pkt_lt_1023bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pkt_lt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_lt_1518bytes,
                "xmt_pkt_lt_1518bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "xmt_pkt_gt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.xmt_pkt_gt_1518bytes,
                "xmt_pkt_gt_1518bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_frames",
                CTLFLAG_RD, &ha->hw.mac.rcv_frames,
                "rcv_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_bytes,
                "rcv_bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_mcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.rcv_mcast_pkts,
                "rcv_mcast_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_bcast_pkts",
                CTLFLAG_RD, &ha->hw.mac.rcv_bcast_pkts,
                "rcv_bcast_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pause_frames",
                CTLFLAG_RD, &ha->hw.mac.rcv_pause_frames,
                "rcv_pause_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_cntrl_pkts",
                CTLFLAG_RD, &ha->hw.mac.rcv_cntrl_pkts,
                "rcv_cntrl_pkts");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pkt_lt_64bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_64bytes,
                "rcv_pkt_lt_64bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pkt_lt_127bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_127bytes,
                "rcv_pkt_lt_127bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pkt_lt_255bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_255bytes,
                "rcv_pkt_lt_255bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pkt_lt_511bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_511bytes,
                "rcv_pkt_lt_511bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pkt_lt_1023bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_1023bytes,
                "rcv_pkt_lt_1023bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pkt_lt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_lt_1518bytes,
                "rcv_pkt_lt_1518bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_pkt_gt_1518bytes",
                CTLFLAG_RD, &ha->hw.mac.rcv_pkt_gt_1518bytes,
                "rcv_pkt_gt_1518bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_len_error",
                CTLFLAG_RD, &ha->hw.mac.rcv_len_error,
                "rcv_len_error");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_len_small",
                CTLFLAG_RD, &ha->hw.mac.rcv_len_small,
                "rcv_len_small");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_len_large",
                CTLFLAG_RD, &ha->hw.mac.rcv_len_large,
                "rcv_len_large");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_jabber",
                CTLFLAG_RD, &ha->hw.mac.rcv_jabber,
                "rcv_jabber");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "rcv_dropped",
                CTLFLAG_RD, &ha->hw.mac.rcv_dropped,
                "rcv_dropped");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "fcs_error",
                CTLFLAG_RD, &ha->hw.mac.fcs_error,
                "fcs_error");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "align_error",
                CTLFLAG_RD, &ha->hw.mac.align_error,
                "align_error");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "eswitched_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_frames,
                "eswitched_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "eswitched_bytes",
                CTLFLAG_RD, &ha->hw.mac.eswitched_bytes,
                "eswitched_bytes");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "eswitched_mcast_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_mcast_frames,
                "eswitched_mcast_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "eswitched_bcast_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_bcast_frames,
                "eswitched_bcast_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "eswitched_ucast_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_ucast_frames,
                "eswitched_ucast_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "eswitched_err_free_frames",
                CTLFLAG_RD, &ha->hw.mac.eswitched_err_free_frames,
                "eswitched_err_free_frames");

        SYSCTL_ADD_QUAD(ctx, children,
                OID_AUTO, "eswitched_err_free_bytes",
                CTLFLAG_RD, &ha->hw.mac.eswitched_err_free_bytes,
                "eswitched_err_free_bytes");

 return;
}
