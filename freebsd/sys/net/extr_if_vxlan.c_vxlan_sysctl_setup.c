
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_statistics {int ftable_lock_upgrade_failed; int ftable_nospace; } ;
struct sysctl_ctx_list {int dummy; } ;
struct vxlan_softc {int vxl_unit; struct sysctl_oid* vxl_sysctl_node; int vxl_ftable_timeout; int vxl_ftable_max; int vxl_ftable_cnt; struct vxlan_statistics vxl_stats; struct sysctl_ctx_list vxl_sysctl_ctx; } ;
struct sysctl_oid {int dummy; } ;
typedef int namebuf ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_SKIP ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 void* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct vxlan_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _net_link_vxlan ;
 int snprintf (char*,int,char*,int) ;
 int sysctl_ctx_init (struct sysctl_ctx_list*) ;
 int vxlan_ftable_sysctl_dump ;

__attribute__((used)) static void
vxlan_sysctl_setup(struct vxlan_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *node;
 struct vxlan_statistics *stats;
 char namebuf[8];

 ctx = &sc->vxl_sysctl_ctx;
 stats = &sc->vxl_stats;
 snprintf(namebuf, sizeof(namebuf), "%d", sc->vxl_unit);

 sysctl_ctx_init(ctx);
 sc->vxl_sysctl_node = SYSCTL_ADD_NODE(ctx,
     SYSCTL_STATIC_CHILDREN(_net_link_vxlan), OID_AUTO, namebuf,
     CTLFLAG_RD, ((void*)0), "");

 node = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(sc->vxl_sysctl_node),
     OID_AUTO, "ftable", CTLFLAG_RD, ((void*)0), "");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(node), OID_AUTO, "count",
     CTLFLAG_RD, &sc->vxl_ftable_cnt, 0,
     "Number of entries in fowarding table");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(node), OID_AUTO, "max",
      CTLFLAG_RD, &sc->vxl_ftable_max, 0,
     "Maximum number of entries allowed in fowarding table");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(node), OID_AUTO, "timeout",
     CTLFLAG_RD, &sc->vxl_ftable_timeout, 0,
     "Number of seconds between prunes of the forwarding table");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(node), OID_AUTO, "dump",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE | CTLFLAG_SKIP,
     sc, 0, vxlan_ftable_sysctl_dump, "A",
     "Dump the forwarding table entries");

 node = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(sc->vxl_sysctl_node),
     OID_AUTO, "stats", CTLFLAG_RD, ((void*)0), "");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(node), OID_AUTO,
     "ftable_nospace", CTLFLAG_RD, &stats->ftable_nospace, 0,
     "Fowarding table reached maximum entries");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(node), OID_AUTO,
     "ftable_lock_upgrade_failed", CTLFLAG_RD,
     &stats->ftable_lock_upgrade_failed, 0,
     "Forwarding table update required lock upgrade");
}
