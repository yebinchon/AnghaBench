
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct alc_hw_stats {int tx_pkts_truncated; int tx_lenerrs; int tx_desc_underrun; int tx_underrun; int tx_excess_colls; int tx_late_colls; int tx_multi_colls; int tx_single_colls; int tx_pkts_1519_max; int tx_pkts_1024_1518; int tx_pkts_512_1023; int tx_pkts_256_511; int tx_pkts_128_255; int tx_pkts_65_127; int tx_pkts_64; int tx_mcast_bytes; int tx_bcast_bytes; int tx_bytes; int tx_excess_defer; int tx_control_frames; int tx_pause_frames; int tx_mcast_frames; int tx_bcast_frames; int tx_frames; int rx_pkts_filtered; int rx_alignerrs; int rx_rrs_errs; int rx_fifo_oflows; int rx_pkts_truncated; int rx_pkts_1519_max; int rx_pkts_1024_1518; int rx_pkts_512_1023; int rx_pkts_256_511; int rx_pkts_128_255; int rx_pkts_65_127; int rx_pkts_64; int rx_fragments; int rx_runts; int rx_mcast_bytes; int rx_bcast_bytes; int rx_bytes; int rx_lenerrs; int rx_crcerrs; int rx_control_frames; int rx_pause_frames; int rx_mcast_frames; int rx_bcast_frames; int rx_frames; } ;
struct alc_softc {scalar_t__ alc_int_rx_mod; scalar_t__ alc_int_tx_mod; scalar_t__ alc_process_limit; int alc_dev; struct alc_hw_stats alc_stats; } ;


 void* ALC_IM_RX_TIMER_DEFAULT ;
 scalar_t__ ALC_IM_TIMER_MAX ;
 scalar_t__ ALC_IM_TIMER_MIN ;
 void* ALC_IM_TX_TIMER_DEFAULT ;
 void* ALC_PROC_DEFAULT ;
 scalar_t__ ALC_PROC_MAX ;
 scalar_t__ ALC_PROC_MIN ;
 int ALC_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int ALC_SYSCTL_STAT_ADD64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,scalar_t__*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int device_get_name (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,void*) ;
 int resource_int_value (int ,int ,char*,scalar_t__*) ;
 int sysctl_hw_alc_int_mod ;
 int sysctl_hw_alc_proc_limit ;

__attribute__((used)) static void
alc_sysctl_node(struct alc_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct alc_hw_stats *stats;
 int error;

 stats = &sc->alc_stats;
 ctx = device_get_sysctl_ctx(sc->alc_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->alc_dev));

 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "int_rx_mod",
     CTLTYPE_INT | CTLFLAG_RW, &sc->alc_int_rx_mod, 0,
     sysctl_hw_alc_int_mod, "I", "alc Rx interrupt moderation");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "int_tx_mod",
     CTLTYPE_INT | CTLFLAG_RW, &sc->alc_int_tx_mod, 0,
     sysctl_hw_alc_int_mod, "I", "alc Tx interrupt moderation");

 sc->alc_int_rx_mod = ALC_IM_RX_TIMER_DEFAULT;
 error = resource_int_value(device_get_name(sc->alc_dev),
     device_get_unit(sc->alc_dev), "int_rx_mod", &sc->alc_int_rx_mod);
 if (error == 0) {
  if (sc->alc_int_rx_mod < ALC_IM_TIMER_MIN ||
      sc->alc_int_rx_mod > ALC_IM_TIMER_MAX) {
   device_printf(sc->alc_dev, "int_rx_mod value out of "
       "range; using default: %d\n",
       ALC_IM_RX_TIMER_DEFAULT);
   sc->alc_int_rx_mod = ALC_IM_RX_TIMER_DEFAULT;
  }
 }
 sc->alc_int_tx_mod = ALC_IM_TX_TIMER_DEFAULT;
 error = resource_int_value(device_get_name(sc->alc_dev),
     device_get_unit(sc->alc_dev), "int_tx_mod", &sc->alc_int_tx_mod);
 if (error == 0) {
  if (sc->alc_int_tx_mod < ALC_IM_TIMER_MIN ||
      sc->alc_int_tx_mod > ALC_IM_TIMER_MAX) {
   device_printf(sc->alc_dev, "int_tx_mod value out of "
       "range; using default: %d\n",
       ALC_IM_TX_TIMER_DEFAULT);
   sc->alc_int_tx_mod = ALC_IM_TX_TIMER_DEFAULT;
  }
 }
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "process_limit",
     CTLTYPE_INT | CTLFLAG_RW, &sc->alc_process_limit, 0,
     sysctl_hw_alc_proc_limit, "I",
     "max number of Rx events to process");

 sc->alc_process_limit = ALC_PROC_DEFAULT;
 error = resource_int_value(device_get_name(sc->alc_dev),
     device_get_unit(sc->alc_dev), "process_limit",
     &sc->alc_process_limit);
 if (error == 0) {
  if (sc->alc_process_limit < ALC_PROC_MIN ||
      sc->alc_process_limit > ALC_PROC_MAX) {
   device_printf(sc->alc_dev,
       "process_limit value out of range; "
       "using default: %d\n", ALC_PROC_DEFAULT);
   sc->alc_process_limit = ALC_PROC_DEFAULT;
  }
 }

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "ALC statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "Rx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 ALC_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->rx_frames, "Good frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "good_bcast_frames",
     &stats->rx_bcast_frames, "Good broadcast frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "good_mcast_frames",
     &stats->rx_mcast_frames, "Good multicast frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "pause_frames",
     &stats->rx_pause_frames, "Pause control frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "control_frames",
     &stats->rx_control_frames, "Control frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "crc_errs",
     &stats->rx_crcerrs, "CRC errors");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "len_errs",
     &stats->rx_lenerrs, "Frames with length mismatched");
 ALC_SYSCTL_STAT_ADD64(ctx, child, "good_octets",
     &stats->rx_bytes, "Good octets");
 ALC_SYSCTL_STAT_ADD64(ctx, child, "good_bcast_octets",
     &stats->rx_bcast_bytes, "Good broadcast octets");
 ALC_SYSCTL_STAT_ADD64(ctx, child, "good_mcast_octets",
     &stats->rx_mcast_bytes, "Good multicast octets");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "runts",
     &stats->rx_runts, "Too short frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "fragments",
     &stats->rx_fragments, "Fragmented frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_64",
     &stats->rx_pkts_64, "64 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_65_127",
     &stats->rx_pkts_65_127, "65 to 127 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_128_255",
     &stats->rx_pkts_128_255, "128 to 255 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_256_511",
     &stats->rx_pkts_256_511, "256 to 511 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_512_1023",
     &stats->rx_pkts_512_1023, "512 to 1023 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_1024_1518",
     &stats->rx_pkts_1024_1518, "1024 to 1518 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_1519_max",
     &stats->rx_pkts_1519_max, "1519 to max frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "trunc_errs",
     &stats->rx_pkts_truncated, "Truncated frames due to MTU size");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "fifo_oflows",
     &stats->rx_fifo_oflows, "FIFO overflows");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "rrs_errs",
     &stats->rx_rrs_errs, "Return status write-back errors");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "align_errs",
     &stats->rx_alignerrs, "Alignment errors");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "filtered",
     &stats->rx_pkts_filtered,
     "Frames dropped due to address filtering");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "Tx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 ALC_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->tx_frames, "Good frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "good_bcast_frames",
     &stats->tx_bcast_frames, "Good broadcast frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "good_mcast_frames",
     &stats->tx_mcast_frames, "Good multicast frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "pause_frames",
     &stats->tx_pause_frames, "Pause control frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "control_frames",
     &stats->tx_control_frames, "Control frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "excess_defers",
     &stats->tx_excess_defer, "Frames with excessive derferrals");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "defers",
     &stats->tx_excess_defer, "Frames with derferrals");
 ALC_SYSCTL_STAT_ADD64(ctx, child, "good_octets",
     &stats->tx_bytes, "Good octets");
 ALC_SYSCTL_STAT_ADD64(ctx, child, "good_bcast_octets",
     &stats->tx_bcast_bytes, "Good broadcast octets");
 ALC_SYSCTL_STAT_ADD64(ctx, child, "good_mcast_octets",
     &stats->tx_mcast_bytes, "Good multicast octets");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_64",
     &stats->tx_pkts_64, "64 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_65_127",
     &stats->tx_pkts_65_127, "65 to 127 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_128_255",
     &stats->tx_pkts_128_255, "128 to 255 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_256_511",
     &stats->tx_pkts_256_511, "256 to 511 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_512_1023",
     &stats->tx_pkts_512_1023, "512 to 1023 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_1024_1518",
     &stats->tx_pkts_1024_1518, "1024 to 1518 bytes frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "frames_1519_max",
     &stats->tx_pkts_1519_max, "1519 to max frames");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "single_colls",
     &stats->tx_single_colls, "Single collisions");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "multi_colls",
     &stats->tx_multi_colls, "Multiple collisions");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "late_colls",
     &stats->tx_late_colls, "Late collisions");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "excess_colls",
     &stats->tx_excess_colls, "Excessive collisions");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "underruns",
     &stats->tx_underrun, "FIFO underruns");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "desc_underruns",
     &stats->tx_desc_underrun, "Descriptor write-back errors");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "len_errs",
     &stats->tx_lenerrs, "Frames with length mismatched");
 ALC_SYSCTL_STAT_ADD32(ctx, child, "trunc_errs",
     &stats->tx_pkts_truncated, "Truncated frames due to MTU size");
}
