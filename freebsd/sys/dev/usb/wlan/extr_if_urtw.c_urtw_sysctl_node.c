
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_stats {int * txrates; } ;
struct urtw_softc {int sc_dev; struct urtw_stats sc_stats; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int URTW_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
urtw_sysctl_node(struct urtw_softc *sc)
{


 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child, *parent;
 struct sysctl_oid *tree;
 struct urtw_stats *stats = &sc->sc_stats;

 ctx = device_get_sysctl_ctx(sc->sc_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->sc_dev));

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "URTW statistics");
 parent = SYSCTL_CHILDREN(tree);


 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "Tx MAC statistics");
 child = SYSCTL_CHILDREN(tree);
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "1m", CTLFLAG_RD, &stats->txrates[0], 0, "1 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "2m", CTLFLAG_RD, &stats->txrates[1], 0, "2 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "5.5m", CTLFLAG_RD, &stats->txrates[2], 0, "5.5 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "6m", CTLFLAG_RD, &stats->txrates[4], 0, "6 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "9m", CTLFLAG_RD, &stats->txrates[5], 0, "9 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "11m", CTLFLAG_RD, &stats->txrates[3], 0, "11 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "12m", CTLFLAG_RD, &stats->txrates[6], 0, "12 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "18m", CTLFLAG_RD, &stats->txrates[7], 0, "18 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "24m", CTLFLAG_RD, &stats->txrates[8], 0, "24 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "36m", CTLFLAG_RD, &stats->txrates[9], 0, "36 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "48m", CTLFLAG_RD, &stats->txrates[10], 0, "48 Mbit/s");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "54m", CTLFLAG_RD, &stats->txrates[11], 0, "54 Mbit/s");


}
