
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct tsec_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TSEC_IC_RX ;
 int TSEC_IC_TX ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int tsec_sysctl_ic_count ;
 int tsec_sysctl_ic_time ;

__attribute__((used)) static void
tsec_add_sysctls(struct tsec_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children;
 struct sysctl_oid *tree;

 ctx = device_get_sysctl_ctx(sc->dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev));
 tree = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "int_coal",
     CTLFLAG_RD, 0, "TSEC Interrupts coalescing");
 children = SYSCTL_CHILDREN(tree);

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rx_time",
     CTLTYPE_UINT | CTLFLAG_RW, sc, TSEC_IC_RX, tsec_sysctl_ic_time,
     "I", "IC RX time threshold (0-65535)");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "rx_count",
     CTLTYPE_UINT | CTLFLAG_RW, sc, TSEC_IC_RX, tsec_sysctl_ic_count,
     "I", "IC RX frame count threshold (0-255)");

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "tx_time",
     CTLTYPE_UINT | CTLFLAG_RW, sc, TSEC_IC_TX, tsec_sysctl_ic_time,
     "I", "IC TX time threshold (0-65535)");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "tx_count",
     CTLTYPE_UINT | CTLFLAG_RW, sc, TSEC_IC_TX, tsec_sysctl_ic_count,
     "I", "IC TX frame count threshold (0-255)");
}
