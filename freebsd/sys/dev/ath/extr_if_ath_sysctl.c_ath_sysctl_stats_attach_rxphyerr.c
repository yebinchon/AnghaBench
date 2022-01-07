
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int * ast_rx_phy; } ;
struct ath_softc {TYPE_1__ sc_stats; int sc_dev; } ;
typedef int sn ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
ath_sysctl_stats_attach_rxphyerr(struct ath_softc *sc, struct sysctl_oid_list *parent)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);
 struct sysctl_oid_list *child = SYSCTL_CHILDREN(tree);
 int i;
 char sn[8];

 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "rx_phy_err", CTLFLAG_RD, ((void*)0), "Per-code RX PHY Errors");
 child = SYSCTL_CHILDREN(tree);
 for (i = 0; i < 64; i++) {
  snprintf(sn, sizeof(sn), "%d", i);
  SYSCTL_ADD_UINT(ctx, child, OID_AUTO, sn, CTLFLAG_RD, &sc->sc_stats.ast_rx_phy[i], 0, "");
 }
}
