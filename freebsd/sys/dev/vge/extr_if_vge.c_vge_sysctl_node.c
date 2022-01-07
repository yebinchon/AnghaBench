
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_hw_stats {int tx_sqeerrs; int tx_pause; int tx_latecolls; int tx_colls; int tx_jumbos; int tx_pkts_1024_1518; int tx_pkts_512_1023; int tx_pkts_256_511; int tx_pkts_128_255; int tx_pkts_65_127; int tx_pkts_64; int tx_good_frames; int rx_lenerrs; int rx_symerrs; int rx_nobufs; int rx_alignerrs; int rx_pause_frames; int rx_crcerrs; int rx_jumbos; int rx_pkts_1519_max_errs; int rx_pkts_1519_max; int rx_pkts_1024_1518; int rx_pkts_512_1023; int rx_pkts_256_511; int rx_pkts_128_255; int rx_pkts_65_127; int rx_pkts_64; int rx_runts_errs; int rx_runts; int rx_fifo_oflows; int rx_good_frames; int rx_frames; } ;
struct vge_softc {int vge_tx_coal_pkt; int vge_dev; int vge_rx_coal_pkt; int vge_int_holdoff; struct vge_hw_stats vge_stats; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int VGE_INT_HOLDOFF_DEFAULT ;
 int VGE_RX_COAL_PKT_DEFAULT ;
 int VGE_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int VGE_TX_COAL_PKT_DEFAULT ;
 int device_get_name (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int resource_int_value (int ,int ,char*,int *) ;
 int vge_stats_clear (struct vge_softc*) ;

__attribute__((used)) static void
vge_sysctl_node(struct vge_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct vge_hw_stats *stats;

 stats = &sc->vge_stats;
 ctx = device_get_sysctl_ctx(sc->vge_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->vge_dev));

 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "int_holdoff",
     CTLFLAG_RW, &sc->vge_int_holdoff, 0, "interrupt holdoff");
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "rx_coal_pkt",
     CTLFLAG_RW, &sc->vge_rx_coal_pkt, 0, "rx coalescing packet");
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "tx_coal_pkt",
     CTLFLAG_RW, &sc->vge_tx_coal_pkt, 0, "tx coalescing packet");


 sc->vge_int_holdoff = VGE_INT_HOLDOFF_DEFAULT;
 resource_int_value(device_get_name(sc->vge_dev),
     device_get_unit(sc->vge_dev), "int_holdoff", &sc->vge_int_holdoff);
 sc->vge_rx_coal_pkt = VGE_RX_COAL_PKT_DEFAULT;
 resource_int_value(device_get_name(sc->vge_dev),
     device_get_unit(sc->vge_dev), "rx_coal_pkt", &sc->vge_rx_coal_pkt);
 sc->vge_tx_coal_pkt = VGE_TX_COAL_PKT_DEFAULT;
 resource_int_value(device_get_name(sc->vge_dev),
     device_get_unit(sc->vge_dev), "tx_coal_pkt", &sc->vge_tx_coal_pkt);

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "VGE statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "RX MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames",
     &stats->rx_frames, "frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->rx_good_frames, "Good frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "fifo_oflows",
     &stats->rx_fifo_oflows, "FIFO overflows");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "runts",
     &stats->rx_runts, "Too short frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "runts_errs",
     &stats->rx_runts_errs, "Too short frames with errors");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_64",
     &stats->rx_pkts_64, "64 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_65_127",
     &stats->rx_pkts_65_127, "65 to 127 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_128_255",
     &stats->rx_pkts_128_255, "128 to 255 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_256_511",
     &stats->rx_pkts_256_511, "256 to 511 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_512_1023",
     &stats->rx_pkts_512_1023, "512 to 1023 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_1024_1518",
     &stats->rx_pkts_1024_1518, "1024 to 1518 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_1519_max",
     &stats->rx_pkts_1519_max, "1519 to max frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_1519_max_errs",
     &stats->rx_pkts_1519_max_errs, "1519 to max frames with error");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_jumbo",
     &stats->rx_jumbos, "Jumbo frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "crcerrs",
     &stats->rx_crcerrs, "CRC errors");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "pause_frames",
     &stats->rx_pause_frames, "CRC errors");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "align_errs",
     &stats->rx_alignerrs, "Alignment errors");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "nobufs",
     &stats->rx_nobufs, "Frames with no buffer event");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "sym_errs",
     &stats->rx_symerrs, "Frames with symbol errors");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "len_errs",
     &stats->rx_lenerrs, "Frames with length mismatched");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "TX MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 VGE_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->tx_good_frames, "Good frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_64",
     &stats->tx_pkts_64, "64 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_65_127",
     &stats->tx_pkts_65_127, "65 to 127 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_128_255",
     &stats->tx_pkts_128_255, "128 to 255 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_256_511",
     &stats->tx_pkts_256_511, "256 to 511 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_512_1023",
     &stats->tx_pkts_512_1023, "512 to 1023 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_1024_1518",
     &stats->tx_pkts_1024_1518, "1024 to 1518 bytes frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "frames_jumbo",
     &stats->tx_jumbos, "Jumbo frames");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "colls",
     &stats->tx_colls, "Collisions");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "late_colls",
     &stats->tx_latecolls, "Late collisions");
 VGE_SYSCTL_STAT_ADD32(ctx, child, "pause_frames",
     &stats->tx_pause, "Pause frames");





 vge_stats_clear(sc);
}
