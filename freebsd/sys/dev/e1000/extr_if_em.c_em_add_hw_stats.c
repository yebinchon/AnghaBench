
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx_ring {int tx_irq; int me; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rx_ring {int rx_irq; int me; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct e1000_hw_stats {int icrxoc; int icrxdmtc; int ictxqmtc; int ictxqec; int ictxatc; int ictxptc; int icrxatc; int icrxptc; int iac; int tsctfc; int tsctc; int ptc1522; int ptc1023; int ptc511; int ptc255; int ptc127; int ptc64; int mptc; int bptc; int gptc; int tpt; int gotc; int gorc; int prc1522; int prc1023; int prc511; int prc255; int prc127; int prc64; int mprc; int bprc; int gprc; int tpr; int xofftxc; int xoffrxc; int xontxc; int xonrxc; int cexterr; int algnerrc; int crcerrs; int rxerrc; int rjc; int roc; int rfc; int ruc; int rnbc; int mpc; int dc; int sec; int symerrs; int colc; int latecol; int mcc; int scc; int ecol; } ;
struct TYPE_3__ {int low_water; int high_water; } ;
struct TYPE_4__ {TYPE_1__ fc; } ;
struct adapter {int tx_num_queues; int rx_num_queues; struct e1000_hw_stats stats; TYPE_2__ hw; int watchdog_events; int rx_overruns; int link_irq; int dropped_pkts; struct em_rx_queue* rx_queues; struct em_tx_queue* tx_queues; int ctx; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLTYPE_UINT ;
 int E1000_CTRL ;
 int E1000_RCTL ;
 int E1000_RDH (int ) ;
 int E1000_RDT (int ) ;
 int E1000_TDH (int ) ;
 int E1000_TDT (int ) ;
 int OID_AUTO ;
 int QUEUE_NAME_LEN ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct adapter*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_ULONG (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int em_sysctl_reg_handler ;
 int iflib_get_dev (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
em_add_hw_stats(struct adapter *adapter)
{
 device_t dev = iflib_get_dev(adapter->ctx);
 struct em_tx_queue *tx_que = adapter->tx_queues;
 struct em_rx_queue *rx_que = adapter->rx_queues;

 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(dev);
 struct sysctl_oid_list *child = SYSCTL_CHILDREN(tree);
 struct e1000_hw_stats *stats = &adapter->stats;

 struct sysctl_oid *stat_node, *queue_node, *int_node;
 struct sysctl_oid_list *stat_list, *queue_list, *int_list;


 char namebuf[32];


 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "dropped",
   CTLFLAG_RD, &adapter->dropped_pkts,
   "Driver dropped packets");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "link_irq",
   CTLFLAG_RD, &adapter->link_irq,
   "Link MSI-X IRQ Handled");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "rx_overruns",
   CTLFLAG_RD, &adapter->rx_overruns,
   "RX overruns");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "watchdog_timeouts",
   CTLFLAG_RD, &adapter->watchdog_events,
   "Watchdog timeouts");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "device_control",
   CTLTYPE_UINT | CTLFLAG_RD, adapter, E1000_CTRL,
   em_sysctl_reg_handler, "IU",
   "Device Control Register");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rx_control",
   CTLTYPE_UINT | CTLFLAG_RD, adapter, E1000_RCTL,
   em_sysctl_reg_handler, "IU",
   "Receiver Control Register");
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "fc_high_water",
   CTLFLAG_RD, &adapter->hw.fc.high_water, 0,
   "Flow Control High Watermark");
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "fc_low_water",
   CTLFLAG_RD, &adapter->hw.fc.low_water, 0,
   "Flow Control Low Watermark");

 for (int i = 0; i < adapter->tx_num_queues; i++, tx_que++) {
  struct tx_ring *txr = &tx_que->txr;
  snprintf(namebuf, 32, "queue_tx_%d", i);
  queue_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf,
         CTLFLAG_RD, ((void*)0), "TX Queue Name");
  queue_list = SYSCTL_CHILDREN(queue_node);

  SYSCTL_ADD_PROC(ctx, queue_list, OID_AUTO, "txd_head",
    CTLTYPE_UINT | CTLFLAG_RD, adapter,
    E1000_TDH(txr->me),
    em_sysctl_reg_handler, "IU",
    "Transmit Descriptor Head");
  SYSCTL_ADD_PROC(ctx, queue_list, OID_AUTO, "txd_tail",
    CTLTYPE_UINT | CTLFLAG_RD, adapter,
    E1000_TDT(txr->me),
    em_sysctl_reg_handler, "IU",
    "Transmit Descriptor Tail");
  SYSCTL_ADD_ULONG(ctx, queue_list, OID_AUTO, "tx_irq",
    CTLFLAG_RD, &txr->tx_irq,
    "Queue MSI-X Transmit Interrupts");
 }

 for (int j = 0; j < adapter->rx_num_queues; j++, rx_que++) {
  struct rx_ring *rxr = &rx_que->rxr;
  snprintf(namebuf, 32, "queue_rx_%d", j);
  queue_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf,
         CTLFLAG_RD, ((void*)0), "RX Queue Name");
  queue_list = SYSCTL_CHILDREN(queue_node);

  SYSCTL_ADD_PROC(ctx, queue_list, OID_AUTO, "rxd_head",
    CTLTYPE_UINT | CTLFLAG_RD, adapter,
    E1000_RDH(rxr->me),
    em_sysctl_reg_handler, "IU",
    "Receive Descriptor Head");
  SYSCTL_ADD_PROC(ctx, queue_list, OID_AUTO, "rxd_tail",
    CTLTYPE_UINT | CTLFLAG_RD, adapter,
    E1000_RDT(rxr->me),
    em_sysctl_reg_handler, "IU",
    "Receive Descriptor Tail");
  SYSCTL_ADD_ULONG(ctx, queue_list, OID_AUTO, "rx_irq",
    CTLFLAG_RD, &rxr->rx_irq,
    "Queue MSI-X Receive Interrupts");
 }



 stat_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "mac_stats",
        CTLFLAG_RD, ((void*)0), "Statistics");
 stat_list = SYSCTL_CHILDREN(stat_node);

 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "excess_coll",
   CTLFLAG_RD, &stats->ecol,
   "Excessive collisions");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "single_coll",
   CTLFLAG_RD, &stats->scc,
   "Single collisions");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "multiple_coll",
   CTLFLAG_RD, &stats->mcc,
   "Multiple collisions");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "late_coll",
   CTLFLAG_RD, &stats->latecol,
   "Late collisions");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "collision_count",
   CTLFLAG_RD, &stats->colc,
   "Collision Count");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "symbol_errors",
   CTLFLAG_RD, &adapter->stats.symerrs,
   "Symbol Errors");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "sequence_errors",
   CTLFLAG_RD, &adapter->stats.sec,
   "Sequence Errors");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "defer_count",
   CTLFLAG_RD, &adapter->stats.dc,
   "Defer Count");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "missed_packets",
   CTLFLAG_RD, &adapter->stats.mpc,
   "Missed Packets");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "recv_no_buff",
   CTLFLAG_RD, &adapter->stats.rnbc,
   "Receive No Buffers");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "recv_undersize",
   CTLFLAG_RD, &adapter->stats.ruc,
   "Receive Undersize");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "recv_fragmented",
   CTLFLAG_RD, &adapter->stats.rfc,
   "Fragmented Packets Received ");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "recv_oversize",
   CTLFLAG_RD, &adapter->stats.roc,
   "Oversized Packets Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "recv_jabber",
   CTLFLAG_RD, &adapter->stats.rjc,
   "Recevied Jabber");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "recv_errs",
   CTLFLAG_RD, &adapter->stats.rxerrc,
   "Receive Errors");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "crc_errs",
   CTLFLAG_RD, &adapter->stats.crcerrs,
   "CRC errors");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "alignment_errs",
   CTLFLAG_RD, &adapter->stats.algnerrc,
   "Alignment Errors");

 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "coll_ext_errs",
   CTLFLAG_RD, &adapter->stats.cexterr,
   "Collision/Carrier extension errors");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "xon_recvd",
   CTLFLAG_RD, &adapter->stats.xonrxc,
   "XON Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "xon_txd",
   CTLFLAG_RD, &adapter->stats.xontxc,
   "XON Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "xoff_recvd",
   CTLFLAG_RD, &adapter->stats.xoffrxc,
   "XOFF Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "xoff_txd",
   CTLFLAG_RD, &adapter->stats.xofftxc,
   "XOFF Transmitted");


 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "total_pkts_recvd",
   CTLFLAG_RD, &adapter->stats.tpr,
   "Total Packets Received ");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_pkts_recvd",
   CTLFLAG_RD, &adapter->stats.gprc,
   "Good Packets Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "bcast_pkts_recvd",
   CTLFLAG_RD, &adapter->stats.bprc,
   "Broadcast Packets Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "mcast_pkts_recvd",
   CTLFLAG_RD, &adapter->stats.mprc,
   "Multicast Packets Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "rx_frames_64",
   CTLFLAG_RD, &adapter->stats.prc64,
   "64 byte frames received ");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "rx_frames_65_127",
   CTLFLAG_RD, &adapter->stats.prc127,
   "65-127 byte frames received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "rx_frames_128_255",
   CTLFLAG_RD, &adapter->stats.prc255,
   "128-255 byte frames received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "rx_frames_256_511",
   CTLFLAG_RD, &adapter->stats.prc511,
   "256-511 byte frames received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "rx_frames_512_1023",
   CTLFLAG_RD, &adapter->stats.prc1023,
   "512-1023 byte frames received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "rx_frames_1024_1522",
   CTLFLAG_RD, &adapter->stats.prc1522,
   "1023-1522 byte frames received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_octets_recvd",
   CTLFLAG_RD, &adapter->stats.gorc,
   "Good Octets Received");


 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_octets_txd",
   CTLFLAG_RD, &adapter->stats.gotc,
   "Good Octets Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "total_pkts_txd",
   CTLFLAG_RD, &adapter->stats.tpt,
   "Total Packets Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_pkts_txd",
   CTLFLAG_RD, &adapter->stats.gptc,
   "Good Packets Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "bcast_pkts_txd",
   CTLFLAG_RD, &adapter->stats.bptc,
   "Broadcast Packets Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "mcast_pkts_txd",
   CTLFLAG_RD, &adapter->stats.mptc,
   "Multicast Packets Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tx_frames_64",
   CTLFLAG_RD, &adapter->stats.ptc64,
   "64 byte frames transmitted ");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tx_frames_65_127",
   CTLFLAG_RD, &adapter->stats.ptc127,
   "65-127 byte frames transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tx_frames_128_255",
   CTLFLAG_RD, &adapter->stats.ptc255,
   "128-255 byte frames transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tx_frames_256_511",
   CTLFLAG_RD, &adapter->stats.ptc511,
   "256-511 byte frames transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tx_frames_512_1023",
   CTLFLAG_RD, &adapter->stats.ptc1023,
   "512-1023 byte frames transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tx_frames_1024_1522",
   CTLFLAG_RD, &adapter->stats.ptc1522,
   "1024-1522 byte frames transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tso_txd",
   CTLFLAG_RD, &adapter->stats.tsctc,
   "TSO Contexts Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "tso_ctx_fail",
   CTLFLAG_RD, &adapter->stats.tsctfc,
   "TSO Contexts Failed");




 int_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "interrupts",
        CTLFLAG_RD, ((void*)0), "Interrupt Statistics");
 int_list = SYSCTL_CHILDREN(int_node);

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "asserts",
   CTLFLAG_RD, &adapter->stats.iac,
   "Interrupt Assertion Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "rx_pkt_timer",
   CTLFLAG_RD, &adapter->stats.icrxptc,
   "Interrupt Cause Rx Pkt Timer Expire Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "rx_abs_timer",
   CTLFLAG_RD, &adapter->stats.icrxatc,
   "Interrupt Cause Rx Abs Timer Expire Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "tx_pkt_timer",
   CTLFLAG_RD, &adapter->stats.ictxptc,
   "Interrupt Cause Tx Pkt Timer Expire Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "tx_abs_timer",
   CTLFLAG_RD, &adapter->stats.ictxatc,
   "Interrupt Cause Tx Abs Timer Expire Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "tx_queue_empty",
   CTLFLAG_RD, &adapter->stats.ictxqec,
   "Interrupt Cause Tx Queue Empty Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "tx_queue_min_thresh",
   CTLFLAG_RD, &adapter->stats.ictxqmtc,
   "Interrupt Cause Tx Queue Min Thresh Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "rx_desc_min_thresh",
   CTLFLAG_RD, &adapter->stats.icrxdmtc,
   "Interrupt Cause Rx Desc Min Thresh Count");

 SYSCTL_ADD_UQUAD(ctx, int_list, OID_AUTO, "rx_overrun",
   CTLFLAG_RD, &adapter->stats.icrxoc,
   "Interrupt Cause Receiver Overrun Count");
}
