
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring {int total_packets; int tso_tx; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rx_ring {int rx_discarded; int rx_bytes; int rx_packets; } ;
struct ixgbevf_hw_stats {int vfgotc; int vfgptc; int vfmprc; int vfgorc; int vfgprc; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct ix_rx_queue {int irqs; struct rx_ring rxr; } ;
struct TYPE_2__ {struct ixgbevf_hw_stats vf; } ;
struct adapter {int num_tx_queues; int num_rx_queues; int link_irq; int watchdog_events; TYPE_1__ stats; struct ix_rx_queue* rx_queues; struct ix_tx_queue* tx_queues; int dev; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int QUEUE_NAME_LEN ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_ULONG (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
ixv_add_stats_sysctls(struct adapter *adapter)
{
 device_t dev = adapter->dev;
 struct ix_tx_queue *tx_que = adapter->tx_queues;
 struct ix_rx_queue *rx_que = adapter->rx_queues;
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(dev);
 struct sysctl_oid_list *child = SYSCTL_CHILDREN(tree);
 struct ixgbevf_hw_stats *stats = &adapter->stats.vf;
 struct sysctl_oid *stat_node, *queue_node;
 struct sysctl_oid_list *stat_list, *queue_list;


 char namebuf[32];


 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "watchdog_events",
     CTLFLAG_RD, &adapter->watchdog_events, "Watchdog timeouts");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "link_irq",
     CTLFLAG_RD, &adapter->link_irq, "Link MSI-X IRQ Handled");

 for (int i = 0; i < adapter->num_tx_queues; i++, tx_que++) {
  struct tx_ring *txr = &tx_que->txr;
  snprintf(namebuf, 32, "queue%d", i);
  queue_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf,
      CTLFLAG_RD, ((void*)0), "Queue Name");
  queue_list = SYSCTL_CHILDREN(queue_node);

  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "tso_tx",
      CTLFLAG_RD, &(txr->tso_tx), "TSO Packets");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "tx_packets",
      CTLFLAG_RD, &(txr->total_packets), "TX Packets");
 }

 for (int i = 0; i < adapter->num_rx_queues; i++, rx_que++) {
  struct rx_ring *rxr = &rx_que->rxr;
  snprintf(namebuf, 32, "queue%d", i);
  queue_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf,
      CTLFLAG_RD, ((void*)0), "Queue Name");
  queue_list = SYSCTL_CHILDREN(queue_node);

  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "irqs",
      CTLFLAG_RD, &(rx_que->irqs), "IRQs on queue");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "rx_packets",
      CTLFLAG_RD, &(rxr->rx_packets), "RX packets");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "rx_bytes",
      CTLFLAG_RD, &(rxr->rx_bytes), "RX bytes");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "rx_discarded",
      CTLFLAG_RD, &(rxr->rx_discarded), "Discarded RX packets");
 }

 stat_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "mac",
     CTLFLAG_RD, ((void*)0), "VF Statistics (read from HW registers)");
 stat_list = SYSCTL_CHILDREN(stat_node);

 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_pkts_rcvd",
     CTLFLAG_RD, &stats->vfgprc, "Good Packets Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_octets_rcvd",
     CTLFLAG_RD, &stats->vfgorc, "Good Octets Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "mcast_pkts_rcvd",
     CTLFLAG_RD, &stats->vfmprc, "Multicast Packets Received");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_pkts_txd",
     CTLFLAG_RD, &stats->vfgptc, "Good Packets Transmitted");
 SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, "good_octets_txd",
     CTLFLAG_RD, &stats->vfgotc, "Good Octets Transmitted");
}
