
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct nfe_hw_stats {int tx_pause; int tx_frames; int tx_deferals; int tx_retry_errors; int tx_excess_deferals; int tx_carrier_losts; int tx_fifo_underuns; int tx_late_cols; int tx_multi_rexmits; int tx_one_rexmits; int tx_zero_rexmits; int tx_octets; int rx_drops; int rx_pause; int rx_octets; int rx_broadcast; int rx_multicast; int rx_unicast; int rx_len_errors; int rx_fae; int rx_crc_errors; int rx_fifo_overuns; int rx_jumbos; int rx_runts; int rx_late_cols; int rx_extra_bytes; int rx_frame_errors; } ;
struct nfe_softc {scalar_t__ nfe_process_limit; int nfe_flags; int nfe_dev; struct nfe_hw_stats nfe_stats; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int NFE_MIB_V1 ;
 int NFE_MIB_V2 ;
 int NFE_MIB_V3 ;
 void* NFE_PROC_DEFAULT ;
 scalar_t__ NFE_PROC_MAX ;
 scalar_t__ NFE_PROC_MIN ;
 int NFE_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int NFE_SYSCTL_STAT_ADD64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
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
 int sysctl_hw_nfe_proc_limit ;

__attribute__((used)) static void
nfe_sysctl_node(struct nfe_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct nfe_hw_stats *stats;
 int error;

 stats = &sc->nfe_stats;
 ctx = device_get_sysctl_ctx(sc->nfe_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->nfe_dev));
 SYSCTL_ADD_PROC(ctx, child,
     OID_AUTO, "process_limit", CTLTYPE_INT | CTLFLAG_RW,
     &sc->nfe_process_limit, 0, sysctl_hw_nfe_proc_limit, "I",
     "max number of Rx events to process");

 sc->nfe_process_limit = NFE_PROC_DEFAULT;
 error = resource_int_value(device_get_name(sc->nfe_dev),
     device_get_unit(sc->nfe_dev), "process_limit",
     &sc->nfe_process_limit);
 if (error == 0) {
  if (sc->nfe_process_limit < NFE_PROC_MIN ||
      sc->nfe_process_limit > NFE_PROC_MAX) {
   device_printf(sc->nfe_dev,
       "process_limit value out of range; "
       "using default: %d\n", NFE_PROC_DEFAULT);
   sc->nfe_process_limit = NFE_PROC_DEFAULT;
  }
 }

 if ((sc->nfe_flags & (NFE_MIB_V1 | NFE_MIB_V2 | NFE_MIB_V3)) == 0)
  return;

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "NFE statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "Rx MAC statistics");
 child = SYSCTL_CHILDREN(tree);

 NFE_SYSCTL_STAT_ADD32(ctx, child, "frame_errors",
     &stats->rx_frame_errors, "Framing Errors");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "extra_bytes",
     &stats->rx_extra_bytes, "Extra Bytes");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "late_cols",
     &stats->rx_late_cols, "Late Collisions");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "runts",
     &stats->rx_runts, "Runts");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "jumbos",
     &stats->rx_jumbos, "Jumbos");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "fifo_overuns",
     &stats->rx_fifo_overuns, "FIFO Overruns");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "crc_errors",
     &stats->rx_crc_errors, "CRC Errors");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "fae",
     &stats->rx_fae, "Frame Alignment Errors");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "len_errors",
     &stats->rx_len_errors, "Length Errors");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "unicast",
     &stats->rx_unicast, "Unicast Frames");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "multicast",
     &stats->rx_multicast, "Multicast Frames");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "broadcast",
     &stats->rx_broadcast, "Broadcast Frames");
 if ((sc->nfe_flags & NFE_MIB_V2) != 0) {
  NFE_SYSCTL_STAT_ADD64(ctx, child, "octets",
      &stats->rx_octets, "Octets");
  NFE_SYSCTL_STAT_ADD32(ctx, child, "pause",
      &stats->rx_pause, "Pause frames");
  NFE_SYSCTL_STAT_ADD32(ctx, child, "drops",
      &stats->rx_drops, "Drop frames");
 }


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "Tx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 NFE_SYSCTL_STAT_ADD64(ctx, child, "octets",
     &stats->tx_octets, "Octets");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "zero_rexmits",
     &stats->tx_zero_rexmits, "Zero Retransmits");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "one_rexmits",
     &stats->tx_one_rexmits, "One Retransmits");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "multi_rexmits",
     &stats->tx_multi_rexmits, "Multiple Retransmits");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "late_cols",
     &stats->tx_late_cols, "Late Collisions");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "fifo_underuns",
     &stats->tx_fifo_underuns, "FIFO Underruns");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "carrier_losts",
     &stats->tx_carrier_losts, "Carrier Losts");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "excess_deferrals",
     &stats->tx_excess_deferals, "Excess Deferrals");
 NFE_SYSCTL_STAT_ADD32(ctx, child, "retry_errors",
     &stats->tx_retry_errors, "Retry Errors");
 if ((sc->nfe_flags & NFE_MIB_V2) != 0) {
  NFE_SYSCTL_STAT_ADD32(ctx, child, "deferrals",
      &stats->tx_deferals, "Deferrals");
  NFE_SYSCTL_STAT_ADD32(ctx, child, "frames",
      &stats->tx_frames, "Frames");
  NFE_SYSCTL_STAT_ADD32(ctx, child, "pause",
      &stats->tx_pause, "Pause Frames");
 }
 if ((sc->nfe_flags & NFE_MIB_V3) != 0) {
  NFE_SYSCTL_STAT_ADD32(ctx, child, "unicast",
      &stats->tx_deferals, "Unicast Frames");
  NFE_SYSCTL_STAT_ADD32(ctx, child, "multicast",
      &stats->tx_frames, "Multicast Frames");
  NFE_SYSCTL_STAT_ADD32(ctx, child, "broadcast",
      &stats->tx_pause, "Broadcast Frames");
 }
}
