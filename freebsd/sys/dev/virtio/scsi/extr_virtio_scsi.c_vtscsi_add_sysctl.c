
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_statistics {int dequeue_no_requests; int scsi_cmd_timeouts; } ;
struct vtscsi_softc {int vtscsi_debug; struct vtscsi_statistics vtscsi_stats; int vtscsi_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_ULONG (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
vtscsi_add_sysctl(struct vtscsi_softc *sc)
{
 device_t dev;
 struct vtscsi_statistics *stats;
        struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;

 dev = sc->vtscsi_dev;
 stats = &sc->vtscsi_stats;
 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);

 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "debug_level",
     CTLFLAG_RW, &sc->vtscsi_debug, 0,
     "Debug level");

 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "scsi_cmd_timeouts",
     CTLFLAG_RD, &stats->scsi_cmd_timeouts,
     "SCSI command timeouts");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "dequeue_no_requests",
     CTLFLAG_RD, &stats->dequeue_no_requests,
     "No available requests to dequeue");
}
