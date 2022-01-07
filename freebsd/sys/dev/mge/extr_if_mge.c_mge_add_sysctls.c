
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct mge_softc {int dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int MGE_IC_RX ;
 int MGE_IC_TX ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct mge_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int mge_sysctl_ic ;

__attribute__((used)) static void
mge_add_sysctls(struct mge_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children;
 struct sysctl_oid *tree;

 ctx = device_get_sysctl_ctx(sc->dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev));
 tree = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "int_coal",
     CTLFLAG_RD, 0, "MGE Interrupts coalescing");
 children = SYSCTL_CHILDREN(tree);

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rx_time",
     CTLTYPE_UINT | CTLFLAG_RW, sc, MGE_IC_RX, mge_sysctl_ic,
     "I", "IC RX time threshold");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "tx_time",
     CTLTYPE_UINT | CTLFLAG_RW, sc, MGE_IC_TX, mge_sysctl_ic,
     "I", "IC TX time threshold");
}
