
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_hw_stats {int tx_pause_frames; int tx_late_colls; int tx_underruns; int tx_frames; int rx_pause_frames; int rx_desc_unavail; int rx_fifo_full; int rx_long_frames; int rx_crcerrs; int rx_runts; int rx_mcast_frames; int rx_bcast_frames; int rx_frames; } ;
struct vte_softc {scalar_t__ vte_int_rx_mod; scalar_t__ vte_int_tx_mod; int vte_dev; struct vte_hw_stats vte_stats; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,scalar_t__*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ VTE_IM_BUNDLE_MAX ;
 scalar_t__ VTE_IM_BUNDLE_MIN ;
 void* VTE_IM_RX_BUNDLE_DEFAULT ;
 void* VTE_IM_TX_BUNDLE_DEFAULT ;
 int VTE_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int device_get_name (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,void*) ;
 int resource_int_value (int ,int ,char*,scalar_t__*) ;
 int sysctl_hw_vte_int_mod ;

__attribute__((used)) static void
vte_sysctl_node(struct vte_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct vte_hw_stats *stats;
 int error;

 stats = &sc->vte_stats;
 ctx = device_get_sysctl_ctx(sc->vte_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->vte_dev));

 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "int_rx_mod",
     CTLTYPE_INT | CTLFLAG_RW, &sc->vte_int_rx_mod, 0,
     sysctl_hw_vte_int_mod, "I", "vte RX interrupt moderation");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "int_tx_mod",
     CTLTYPE_INT | CTLFLAG_RW, &sc->vte_int_tx_mod, 0,
     sysctl_hw_vte_int_mod, "I", "vte TX interrupt moderation");

 sc->vte_int_rx_mod = VTE_IM_RX_BUNDLE_DEFAULT;
 error = resource_int_value(device_get_name(sc->vte_dev),
     device_get_unit(sc->vte_dev), "int_rx_mod", &sc->vte_int_rx_mod);
 if (error == 0) {
  if (sc->vte_int_rx_mod < VTE_IM_BUNDLE_MIN ||
      sc->vte_int_rx_mod > VTE_IM_BUNDLE_MAX) {
   device_printf(sc->vte_dev, "int_rx_mod value out of "
       "range; using default: %d\n",
       VTE_IM_RX_BUNDLE_DEFAULT);
   sc->vte_int_rx_mod = VTE_IM_RX_BUNDLE_DEFAULT;
  }
 }

 sc->vte_int_tx_mod = VTE_IM_TX_BUNDLE_DEFAULT;
 error = resource_int_value(device_get_name(sc->vte_dev),
     device_get_unit(sc->vte_dev), "int_tx_mod", &sc->vte_int_tx_mod);
 if (error == 0) {
  if (sc->vte_int_tx_mod < VTE_IM_BUNDLE_MIN ||
      sc->vte_int_tx_mod > VTE_IM_BUNDLE_MAX) {
   device_printf(sc->vte_dev, "int_tx_mod value out of "
       "range; using default: %d\n",
       VTE_IM_TX_BUNDLE_DEFAULT);
   sc->vte_int_tx_mod = VTE_IM_TX_BUNDLE_DEFAULT;
  }
 }

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "VTE statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "RX MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 VTE_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->rx_frames, "Good frames");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "good_bcast_frames",
     &stats->rx_bcast_frames, "Good broadcast frames");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "good_mcast_frames",
     &stats->rx_mcast_frames, "Good multicast frames");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "runt",
     &stats->rx_runts, "Too short frames");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "crc_errs",
     &stats->rx_crcerrs, "CRC errors");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "long_frames",
     &stats->rx_long_frames,
     "Frames that have longer length than maximum packet length");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "fifo_full",
     &stats->rx_fifo_full, "FIFO full");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "desc_unavail",
     &stats->rx_desc_unavail, "Descriptor unavailable frames");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "pause_frames",
     &stats->rx_pause_frames, "Pause control frames");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "TX MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 VTE_SYSCTL_STAT_ADD32(ctx, child, "good_frames",
     &stats->tx_frames, "Good frames");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "underruns",
     &stats->tx_underruns, "FIFO underruns");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "late_colls",
     &stats->tx_late_colls, "Late collisions");
 VTE_SYSCTL_STAT_ADD32(ctx, child, "pause_frames",
     &stats->tx_pause_frames, "Pause control frames");
}
