
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq_stats {int vtxs_rescheduled; int vtxs_tso; int vtxs_csum; int vtxs_omcasts; int vtxs_obytes; int vtxs_opackets; } ;
struct vtnet_txq {int vtntx_id; struct vtnet_txq_stats vtntx_stats; } ;
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
vtnet_setup_txq_sysctl(struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *child, struct vtnet_txq *txq)
{
 struct sysctl_oid *node;
 struct sysctl_oid_list *list;
 struct vtnet_txq_stats *stats;
 char namebuf[16];

 snprintf(namebuf, sizeof(namebuf), "txq%d", txq->vtntx_id);
 node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, namebuf,
     CTLFLAG_RD, ((void*)0), "Transmit Queue");
 list = SYSCTL_CHILDREN(node);

 stats = &txq->vtntx_stats;

 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "opackets", CTLFLAG_RD,
     &stats->vtxs_opackets, "Transmit packets");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "obytes", CTLFLAG_RD,
     &stats->vtxs_obytes, "Transmit bytes");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "omcasts", CTLFLAG_RD,
     &stats->vtxs_omcasts, "Transmit multicasts");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "csum", CTLFLAG_RD,
     &stats->vtxs_csum, "Transmit checksum offloaded");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "tso", CTLFLAG_RD,
     &stats->vtxs_tso, "Transmit segmentation offloaded");
 SYSCTL_ADD_UQUAD(ctx, list, OID_AUTO, "rescheduled", CTLFLAG_RD,
     &stats->vtxs_rescheduled,
     "Transmit interrupt handler rescheduled");
}
