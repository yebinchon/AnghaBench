
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_stat {int st_tx_pending; int st_tx_inactive; int st_tx_active; } ;
struct upgt_softc {int sc_dev; struct upgt_stat sc_stat; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int UPGT_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
upgt_sysctl_node(struct upgt_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child;
 struct sysctl_oid *tree;
 struct upgt_stat *stats;

 stats = &sc->sc_stat;
 ctx = device_get_sysctl_ctx(sc->sc_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->sc_dev));

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "UPGT statistics");
 child = SYSCTL_CHILDREN(tree);
 UPGT_SYSCTL_STAT_ADD32(ctx, child, "tx_active",
     &stats->st_tx_active, "Active numbers in TX queue");
 UPGT_SYSCTL_STAT_ADD32(ctx, child, "tx_inactive",
     &stats->st_tx_inactive, "Inactive numbers in TX queue");
 UPGT_SYSCTL_STAT_ADD32(ctx, child, "tx_pending",
     &stats->st_tx_pending, "Pending numbers in TX queue");
}
