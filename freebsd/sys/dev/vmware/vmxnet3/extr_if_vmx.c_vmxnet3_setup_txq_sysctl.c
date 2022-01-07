
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_txqueue {int vxtxq_id; struct sysctl_oid_list* vxtxq_sysctl; TYPE_1__* vxtxq_ts; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct UPT1_TxStats {int discard; int error; int mcast_bytes; int mcast_packets; int ucast_bytes; int ucast_packets; int TSO_bytes; int TSO_packets; } ;
typedef int namebuf ;
struct TYPE_2__ {struct UPT1_TxStats stats; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
vmxnet3_setup_txq_sysctl(struct vmxnet3_txqueue *txq,
    struct sysctl_ctx_list *ctx, struct sysctl_oid_list *child)
{
 struct sysctl_oid *node, *txsnode;
 struct sysctl_oid_list *list, *txslist;
 struct UPT1_TxStats *txstats;
 char namebuf[16];

 txstats = &txq->vxtxq_ts->stats;

 snprintf(namebuf, sizeof(namebuf), "txq%d", txq->vxtxq_id);
 node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf, CTLFLAG_RD,
     ((void*)0), "Transmit Queue");
 txq->vxtxq_sysctl = list = SYSCTL_CHILDREN(node);





 txsnode = SYSCTL_ADD_NODE(ctx, list, OID_AUTO, "hstats", CTLFLAG_RD,
     ((void*)0), "Host Statistics");
 txslist = SYSCTL_CHILDREN(txsnode);
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "tso_packets", CTLFLAG_RD,
     &txstats->TSO_packets, "TSO packets");
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "tso_bytes", CTLFLAG_RD,
     &txstats->TSO_bytes, "TSO bytes");
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "ucast_packets", CTLFLAG_RD,
     &txstats->ucast_packets, "Unicast packets");
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "unicast_bytes", CTLFLAG_RD,
     &txstats->ucast_bytes, "Unicast bytes");
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "mcast_packets", CTLFLAG_RD,
     &txstats->mcast_packets, "Multicast packets");
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "mcast_bytes", CTLFLAG_RD,
     &txstats->mcast_bytes, "Multicast bytes");
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "error", CTLFLAG_RD,
     &txstats->error, "Errors");
 SYSCTL_ADD_UQUAD(ctx, txslist, OID_AUTO, "discard", CTLFLAG_RD,
     &txstats->discard, "Discards");
}
