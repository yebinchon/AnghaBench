
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_rxq_stats {int vrxs_rescheduled; int vrxs_csum_failed; int vrxs_csum; int vrxs_ierrors; int vrxs_iqdrops; int vrxs_ibytes; int vrxs_ipackets; } ;
struct vtnet_rxq {int vtnrx_id; struct vtnet_rxq_stats vtnrx_stats; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int namebuf ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
vtnet_setup_rxq_sysctl(struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *child, struct vtnet_rxq *rxq)
{
 struct sysctl_oid *node;
 struct sysctl_oid_list *list;
 struct vtnet_rxq_stats *stats;
 char namebuf[16];

 snprintf(namebuf, sizeof(namebuf), "rxq%d", rxq->vtnrx_id);
 node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf,
     CTLFLAG_RD, ((void*)0), "Receive Queue");
 list = SYSCTL_CHILDREN(node);

 stats = &rxq->vtnrx_stats;

 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "ipackets", CTLFLAG_RD,
     &stats->vrxs_ipackets, "Receive packets");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "ibytes", CTLFLAG_RD,
     &stats->vrxs_ibytes, "Receive bytes");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "iqdrops", CTLFLAG_RD,
     &stats->vrxs_iqdrops, "Receive drops");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "ierrors", CTLFLAG_RD,
     &stats->vrxs_ierrors, "Receive errors");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "csum", CTLFLAG_RD,
     &stats->vrxs_csum, "Receive checksum offloaded");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "csum_failed", CTLFLAG_RD,
     &stats->vrxs_csum_failed, "Receive checksum offload failed");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "rescheduled", CTLFLAG_RD,
     &stats->vrxs_rescheduled,
     "Receive interrupt handler rescheduled");
}
