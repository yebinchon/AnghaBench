
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_rxqueue {int vxrxq_id; struct sysctl_oid_list* vxrxq_sysctl; TYPE_1__* vxrxq_rs; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct UPT1_RxStats {int error; int nobuffer; int bcast_bytes; int bcast_packets; int mcast_bytes; int mcast_packets; int ucast_bytes; int ucast_packets; int LRO_bytes; int LRO_packets; } ;
typedef int namebuf ;
struct TYPE_2__ {struct UPT1_RxStats stats; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
vmxnet3_setup_rxq_sysctl(struct vmxnet3_rxqueue *rxq,
    struct sysctl_ctx_list *ctx, struct sysctl_oid_list *child)
{
 struct sysctl_oid *node, *rxsnode;
 struct sysctl_oid_list *list, *rxslist;
 struct UPT1_RxStats *rxstats;
 char namebuf[16];

 rxstats = &rxq->vxrxq_rs->stats;

 snprintf(namebuf, sizeof(namebuf), "rxq%d", rxq->vxrxq_id);
 node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf, CTLFLAG_RD,
     ((void*)0), "Receive Queue");
 rxq->vxrxq_sysctl = list = SYSCTL_CHILDREN(node);





 rxsnode = SYSCTL_ADD_NODE(ctx, list, OID_AUTO, "hstats", CTLFLAG_RD,
     ((void*)0), "Host Statistics");
 rxslist = SYSCTL_CHILDREN(rxsnode);
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "lro_packets", CTLFLAG_RD,
     &rxstats->LRO_packets, "LRO packets");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "lro_bytes", CTLFLAG_RD,
     &rxstats->LRO_bytes, "LRO bytes");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "ucast_packets", CTLFLAG_RD,
     &rxstats->ucast_packets, "Unicast packets");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "unicast_bytes", CTLFLAG_RD,
     &rxstats->ucast_bytes, "Unicast bytes");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "mcast_packets", CTLFLAG_RD,
     &rxstats->mcast_packets, "Multicast packets");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "mcast_bytes", CTLFLAG_RD,
     &rxstats->mcast_bytes, "Multicast bytes");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "bcast_packets", CTLFLAG_RD,
     &rxstats->bcast_packets, "Broadcast packets");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "bcast_bytes", CTLFLAG_RD,
     &rxstats->bcast_bytes, "Broadcast bytes");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "nobuffer", CTLFLAG_RD,
     &rxstats->nobuffer, "No buffer");
 SYSCTL_ADD_UQUAD(ctx, rxslist, OID_AUTO, "error", CTLFLAG_RD,
     &rxstats->error, "Errors");
}
