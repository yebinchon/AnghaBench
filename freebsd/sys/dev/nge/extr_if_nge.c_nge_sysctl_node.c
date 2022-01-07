
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct nge_stats {int tx_seq_errs; int tx_pause; int rx_pause; int rx_unctl_frames; int rx_len_errs; int rx_pkts_jumbos; int rx_sym_errs; int rx_align_errs; int rx_fifo_oflows; int rx_crc_errs; int rx_pkts_errs; } ;
struct nge_softc {int nge_int_holdoff; struct nge_stats nge_stats; int nge_dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int NGE_INT_HOLDOFF_DEFAULT ;
 int NGE_INT_HOLDOFF_MAX ;
 int NGE_INT_HOLDOFF_MIN ;
 int NGE_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int device_get_name (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int,int) ;
 int resource_int_value (int ,int ,char*,int*) ;
 int sysctl_hw_nge_int_holdoff ;

__attribute__((used)) static void
nge_sysctl_node(struct nge_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct nge_stats *stats;
 int error;

 ctx = device_get_sysctl_ctx(sc->nge_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->nge_dev));
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "int_holdoff",
     CTLTYPE_INT | CTLFLAG_RW, &sc->nge_int_holdoff, 0,
     sysctl_hw_nge_int_holdoff, "I", "NGE interrupt moderation");

 sc->nge_int_holdoff = NGE_INT_HOLDOFF_DEFAULT;
 error = resource_int_value(device_get_name(sc->nge_dev),
     device_get_unit(sc->nge_dev), "int_holdoff", &sc->nge_int_holdoff);
 if (error == 0) {
  if (sc->nge_int_holdoff < NGE_INT_HOLDOFF_MIN ||
      sc->nge_int_holdoff > NGE_INT_HOLDOFF_MAX ) {
   device_printf(sc->nge_dev,
       "int_holdoff value out of range; "
       "using default: %d(%d us)\n",
       NGE_INT_HOLDOFF_DEFAULT,
       NGE_INT_HOLDOFF_DEFAULT * 100);
   sc->nge_int_holdoff = NGE_INT_HOLDOFF_DEFAULT;
  }
 }

 stats = &sc->nge_stats;
 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "NGE statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "Rx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 NGE_SYSCTL_STAT_ADD32(ctx, child, "pkts_errs",
     &stats->rx_pkts_errs,
     "Packet errors including both wire errors and FIFO overruns");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "crc_errs",
     &stats->rx_crc_errs, "CRC errors");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "fifo_oflows",
     &stats->rx_fifo_oflows, "FIFO overflows");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "align_errs",
     &stats->rx_align_errs, "Frame alignment errors");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "sym_errs",
     &stats->rx_sym_errs, "One or more symbol errors");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "pkts_jumbos",
     &stats->rx_pkts_jumbos,
     "Packets received with length greater than 1518 bytes");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "len_errs",
     &stats->rx_len_errs, "In Range Length errors");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "unctl_frames",
     &stats->rx_unctl_frames, "Control frames with unsupported opcode");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "pause",
     &stats->rx_pause, "Pause frames");


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "Tx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 NGE_SYSCTL_STAT_ADD32(ctx, child, "pause",
     &stats->tx_pause, "Pause frames");
 NGE_SYSCTL_STAT_ADD32(ctx, child, "seq_errs",
     &stats->tx_seq_errs,
     "Loss of collision heartbeat during transmission");
}
