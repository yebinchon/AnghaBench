
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {int itr; int tx_bytes; int tx_packets; int mss_too_small; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rx_ring {int itr; int desc_errs; int rx_bytes; int rx_packets; } ;
struct ixl_vsi {int num_rx_queues; int num_tx_queues; struct ixl_tx_queue* tx_queues; struct ixl_rx_queue* rx_queues; struct sysctl_oid* vsi_node; } ;
struct ixl_tx_queue {int tso; struct tx_ring txr; } ;
struct ixl_rx_queue {int irqs; struct rx_ring rxr; } ;
typedef int queue_namebuf ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int QUEUE_NAME_LEN ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int bzero (char*,int) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int snprintf (char*,int ,char*,int) ;

void
ixl_add_queues_sysctls(device_t dev, struct ixl_vsi *vsi)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(dev);
 struct sysctl_oid_list *vsi_list, *queue_list;
 struct sysctl_oid *queue_node;
 char queue_namebuf[32];

 struct ixl_rx_queue *rx_que;
 struct ixl_tx_queue *tx_que;
 struct tx_ring *txr;
 struct rx_ring *rxr;

 vsi_list = SYSCTL_CHILDREN(vsi->vsi_node);


 for (int q = 0; q < vsi->num_rx_queues; q++) {
  bzero(queue_namebuf, sizeof(queue_namebuf));
  snprintf(queue_namebuf, QUEUE_NAME_LEN, "rxq%02d", q);
  queue_node = SYSCTL_ADD_NODE(ctx, vsi_list,
      OID_AUTO, queue_namebuf, CTLFLAG_RD, ((void*)0), "RX Queue #");
  queue_list = SYSCTL_CHILDREN(queue_node);

  rx_que = &(vsi->rx_queues[q]);
  rxr = &(rx_que->rxr);

  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "irqs",
    CTLFLAG_RD, &(rx_que->irqs),
    "irqs on this queue (both Tx and Rx)");

  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "packets",
    CTLFLAG_RD, &(rxr->rx_packets),
    "Queue Packets Received");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "bytes",
    CTLFLAG_RD, &(rxr->rx_bytes),
    "Queue Bytes Received");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "desc_err",
    CTLFLAG_RD, &(rxr->desc_errs),
    "Queue Rx Descriptor Errors");
  SYSCTL_ADD_UINT(ctx, queue_list, OID_AUTO, "itr",
    CTLFLAG_RD, &(rxr->itr), 0,
    "Queue Rx ITR Interval");
 }
 for (int q = 0; q < vsi->num_tx_queues; q++) {
  bzero(queue_namebuf, sizeof(queue_namebuf));
  snprintf(queue_namebuf, QUEUE_NAME_LEN, "txq%02d", q);
  queue_node = SYSCTL_ADD_NODE(ctx, vsi_list,
      OID_AUTO, queue_namebuf, CTLFLAG_RD, ((void*)0), "TX Queue #");
  queue_list = SYSCTL_CHILDREN(queue_node);

  tx_que = &(vsi->tx_queues[q]);
  txr = &(tx_que->txr);

  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "tso",
    CTLFLAG_RD, &(tx_que->tso),
    "TSO");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "mss_too_small",
    CTLFLAG_RD, &(txr->mss_too_small),
    "TSO sends with an MSS less than 64");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "packets",
    CTLFLAG_RD, &(txr->tx_packets),
    "Queue Packets Transmitted");
  SYSCTL_ADD_UQUAD(ctx, queue_list, OID_AUTO, "bytes",
    CTLFLAG_RD, &(txr->tx_bytes),
    "Queue Bytes Transmitted");
  SYSCTL_ADD_UINT(ctx, queue_list, OID_AUTO, "itr",
    CTLFLAG_RD, &(txr->itr), 0,
    "Queue Tx ITR Interval");
 }
}
