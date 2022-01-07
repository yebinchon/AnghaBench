
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bge_softc {int bge_forced_collapse; int bge_msi; int bge_forced_udpcsum; int bge_dev; } ;


 scalar_t__ BGE_IS_5705_PLUS (struct bge_softc*) ;
 int CTLFLAG_RDTUN ;
 int CTLFLAG_RW ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct bge_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int bge_add_sysctl_stats (struct bge_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ;
 int bge_add_sysctl_stats_regs (struct bge_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ;
 int bge_sysctl_ape_read ;
 int bge_sysctl_debug_info ;
 int bge_sysctl_mem_read ;
 int bge_sysctl_reg_read ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;

__attribute__((used)) static void
bge_add_sysctls(struct bge_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children;
 int unit;

 ctx = device_get_sysctl_ctx(sc->bge_dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->bge_dev));
 unit = device_get_unit(sc->bge_dev);
 sc->bge_forced_collapse = 0;
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "forced_collapse",
     CTLFLAG_RWTUN, &sc->bge_forced_collapse, 0,
     "Number of fragmented TX buffers of a frame allowed before "
     "forced collapsing");

 sc->bge_msi = 1;
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "msi",
     CTLFLAG_RDTUN, &sc->bge_msi, 0, "Enable MSI");
 sc->bge_forced_udpcsum = 0;
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "forced_udpcsum",
     CTLFLAG_RWTUN, &sc->bge_forced_udpcsum, 0,
     "Enable UDP checksum offloading even if controller can "
     "generate UDP checksum value 0");

 if (BGE_IS_5705_PLUS(sc))
  bge_add_sysctl_stats_regs(sc, ctx, children);
 else
  bge_add_sysctl_stats(sc, ctx, children);
}
