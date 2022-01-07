
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct et_hw_stats {int tx_fragments; int tx_undersize; int tx_oversize; int tx_control; int tx_crcerrs; int tx_jabbers; int tx_drop; int tx_pause_honored; int tx_total_colls; int tx_excess_colls; int tx_late_colls; int tx_multi_colls; int tx_single_colls; int tx_excess_deferred; int tx_deferred; int tx_pause; int tx_bcast; int tx_mcast; int tx_frames; int tx_bytes; int rx_drop; int rx_jabbers; int rx_fragments; int rx_oversize; int rx_runts; int rx_cserrs; int rx_codeerrs; int rx_lenerrs; int rx_alignerrs; int rx_unknown_control; int rx_pause; int rx_control; int rx_bcast; int rx_mcast; int rx_crcerrs; int rx_frames; int rx_bytes; int pkts_1519; int pkts_1024; int pkts_512; int pkts_256; int pkts_128; int pkts_65; int pkts_64; } ;
struct et_softc {struct et_hw_stats sc_stats; int sc_timer; int sc_tx_intr_nsegs; int dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ET_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int ET_SYSCTL_STAT_ADD64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct et_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int et_sysctl_rx_intr_delay ;
 int et_sysctl_rx_intr_npkts ;

__attribute__((used)) static void
et_add_sysctls(struct et_softc * sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children, *parent;
 struct sysctl_oid *tree;
 struct et_hw_stats *stats;

 ctx = device_get_sysctl_ctx(sc->dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev));

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rx_intr_npkts",
     CTLTYPE_INT | CTLFLAG_RW, sc, 0, et_sysctl_rx_intr_npkts, "I",
     "RX IM, # packets per RX interrupt");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rx_intr_delay",
     CTLTYPE_INT | CTLFLAG_RW, sc, 0, et_sysctl_rx_intr_delay, "I",
     "RX IM, RX interrupt delay (x10 usec)");
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "tx_intr_nsegs",
     CTLFLAG_RW, &sc->sc_tx_intr_nsegs, 0,
     "TX IM, # segments per TX interrupt");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO, "timer",
     CTLFLAG_RW, &sc->sc_timer, 0, "TX timer");

 tree = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "ET statistics");
        parent = SYSCTL_CHILDREN(tree);


 stats = &sc->sc_stats;
 ET_SYSCTL_STAT_ADD64(ctx, parent, "frames_64", &stats->pkts_64,
     "0 to 64 bytes frames");
 ET_SYSCTL_STAT_ADD64(ctx, parent, "frames_65_127", &stats->pkts_65,
     "65 to 127 bytes frames");
 ET_SYSCTL_STAT_ADD64(ctx, parent, "frames_128_255", &stats->pkts_128,
     "128 to 255 bytes frames");
 ET_SYSCTL_STAT_ADD64(ctx, parent, "frames_256_511", &stats->pkts_256,
     "256 to 511 bytes frames");
 ET_SYSCTL_STAT_ADD64(ctx, parent, "frames_512_1023", &stats->pkts_512,
     "512 to 1023 bytes frames");
 ET_SYSCTL_STAT_ADD64(ctx, parent, "frames_1024_1518", &stats->pkts_1024,
     "1024 to 1518 bytes frames");
 ET_SYSCTL_STAT_ADD64(ctx, parent, "frames_1519_1522", &stats->pkts_1519,
     "1519 to 1522 bytes frames");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "RX MAC statistics");
 children = SYSCTL_CHILDREN(tree);
 ET_SYSCTL_STAT_ADD64(ctx, children, "bytes",
     &stats->rx_bytes, "Good bytes");
 ET_SYSCTL_STAT_ADD64(ctx, children, "frames",
     &stats->rx_frames, "Good frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "crc_errs",
     &stats->rx_crcerrs, "CRC errors");
 ET_SYSCTL_STAT_ADD64(ctx, children, "mcast_frames",
     &stats->rx_mcast, "Multicast frames");
 ET_SYSCTL_STAT_ADD64(ctx, children, "bcast_frames",
     &stats->rx_bcast, "Broadcast frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "control",
     &stats->rx_control, "Control frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "pause",
     &stats->rx_pause, "Pause frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "unknown_control",
     &stats->rx_unknown_control, "Unknown control frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "align_errs",
     &stats->rx_alignerrs, "Alignment errors");
 ET_SYSCTL_STAT_ADD32(ctx, children, "len_errs",
     &stats->rx_lenerrs, "Frames with length mismatched");
 ET_SYSCTL_STAT_ADD32(ctx, children, "code_errs",
     &stats->rx_codeerrs, "Frames with code error");
 ET_SYSCTL_STAT_ADD32(ctx, children, "cs_errs",
     &stats->rx_cserrs, "Frames with carrier sense error");
 ET_SYSCTL_STAT_ADD32(ctx, children, "runts",
     &stats->rx_runts, "Too short frames");
 ET_SYSCTL_STAT_ADD64(ctx, children, "oversize",
     &stats->rx_oversize, "Oversized frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "fragments",
     &stats->rx_fragments, "Fragmented frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "jabbers",
     &stats->rx_jabbers, "Frames with jabber error");
 ET_SYSCTL_STAT_ADD32(ctx, children, "drop",
     &stats->rx_drop, "Dropped frames");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "TX MAC statistics");
 children = SYSCTL_CHILDREN(tree);
 ET_SYSCTL_STAT_ADD64(ctx, children, "bytes",
     &stats->tx_bytes, "Good bytes");
 ET_SYSCTL_STAT_ADD64(ctx, children, "frames",
     &stats->tx_frames, "Good frames");
 ET_SYSCTL_STAT_ADD64(ctx, children, "mcast_frames",
     &stats->tx_mcast, "Multicast frames");
 ET_SYSCTL_STAT_ADD64(ctx, children, "bcast_frames",
     &stats->tx_bcast, "Broadcast frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "pause",
     &stats->tx_pause, "Pause frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "deferred",
     &stats->tx_deferred, "Deferred frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "excess_deferred",
     &stats->tx_excess_deferred, "Excessively deferred frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "single_colls",
     &stats->tx_single_colls, "Single collisions");
 ET_SYSCTL_STAT_ADD32(ctx, children, "multi_colls",
     &stats->tx_multi_colls, "Multiple collisions");
 ET_SYSCTL_STAT_ADD32(ctx, children, "late_colls",
     &stats->tx_late_colls, "Late collisions");
 ET_SYSCTL_STAT_ADD32(ctx, children, "excess_colls",
     &stats->tx_excess_colls, "Excess collisions");
 ET_SYSCTL_STAT_ADD32(ctx, children, "total_colls",
     &stats->tx_total_colls, "Total collisions");
 ET_SYSCTL_STAT_ADD32(ctx, children, "pause_honored",
     &stats->tx_pause_honored, "Honored pause frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "drop",
     &stats->tx_drop, "Dropped frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "jabbers",
     &stats->tx_jabbers, "Frames with jabber errors");
 ET_SYSCTL_STAT_ADD32(ctx, children, "crc_errs",
     &stats->tx_crcerrs, "Frames with CRC errors");
 ET_SYSCTL_STAT_ADD32(ctx, children, "control",
     &stats->tx_control, "Control frames");
 ET_SYSCTL_STAT_ADD64(ctx, children, "oversize",
     &stats->tx_oversize, "Oversized frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "undersize",
     &stats->tx_undersize, "Undersized frames");
 ET_SYSCTL_STAT_ADD32(ctx, children, "fragments",
     &stats->tx_fragments, "Fragmented frames");
}
