
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ste_hw_stats {int tx_abort; int tx_excess_defers; int tx_frames_defered; int tx_late_colls; int tx_multi_colls; int tx_single_colls; int tx_carrsense_errs; int tx_mcast_frames; int tx_bcast_frames; int tx_frames; int tx_bytes; int rx_lost_frames; int rx_mcast_frames; int rx_bcast_frames; int rx_frames; int rx_bytes; } ;
struct ste_softc {int ste_int_rx_mod; int ste_dev; struct ste_hw_stats ste_stats; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int STE_IM_RX_TIMER_DEFAULT ;
 int STE_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int STE_SYSCTL_STAT_ADD64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int device_get_name (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int resource_int_value (int ,int ,char*,int *) ;

__attribute__((used)) static void
ste_sysctl_node(struct ste_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct ste_hw_stats *stats;

 stats = &sc->ste_stats;
 ctx = device_get_sysctl_ctx(sc->ste_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->ste_dev));

 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "int_rx_mod",
     CTLFLAG_RW, &sc->ste_int_rx_mod, 0, "ste RX interrupt moderation");

 sc->ste_int_rx_mod = STE_IM_RX_TIMER_DEFAULT;
 resource_int_value(device_get_name(sc->ste_dev),
     device_get_unit(sc->ste_dev), "int_rx_mod", &sc->ste_int_rx_mod);

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "STE statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "Rx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 STE_SYSCTL_STAT_ADD64(ctx, child, "good_octets",
     &stats->rx_bytes, "Good octets");
 STE_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->rx_frames, "Good frames");
 STE_SYSCTL_STAT_ADD32(ctx, child, "good_bcast_frames",
     &stats->rx_bcast_frames, "Good broadcast frames");
 STE_SYSCTL_STAT_ADD32(ctx, child, "good_mcast_frames",
     &stats->rx_mcast_frames, "Good multicast frames");
 STE_SYSCTL_STAT_ADD32(ctx, child, "lost_frames",
     &stats->rx_lost_frames, "Lost frames");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "Tx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 STE_SYSCTL_STAT_ADD64(ctx, child, "good_octets",
     &stats->tx_bytes, "Good octets");
 STE_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->tx_frames, "Good frames");
 STE_SYSCTL_STAT_ADD32(ctx, child, "good_bcast_frames",
     &stats->tx_bcast_frames, "Good broadcast frames");
 STE_SYSCTL_STAT_ADD32(ctx, child, "good_mcast_frames",
     &stats->tx_mcast_frames, "Good multicast frames");
 STE_SYSCTL_STAT_ADD32(ctx, child, "carrier_errs",
     &stats->tx_carrsense_errs, "Carrier sense errors");
 STE_SYSCTL_STAT_ADD32(ctx, child, "single_colls",
     &stats->tx_single_colls, "Single collisions");
 STE_SYSCTL_STAT_ADD32(ctx, child, "multi_colls",
     &stats->tx_multi_colls, "Multiple collisions");
 STE_SYSCTL_STAT_ADD32(ctx, child, "late_colls",
     &stats->tx_late_colls, "Late collisions");
 STE_SYSCTL_STAT_ADD32(ctx, child, "defers",
     &stats->tx_frames_defered, "Frames with deferrals");
 STE_SYSCTL_STAT_ADD32(ctx, child, "excess_defers",
     &stats->tx_excess_defers, "Frames with excessive derferrals");
 STE_SYSCTL_STAT_ADD32(ctx, child, "abort",
     &stats->tx_abort, "Aborted frames due to Excessive collisions");
}
