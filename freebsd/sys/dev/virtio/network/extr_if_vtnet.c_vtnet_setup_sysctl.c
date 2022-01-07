
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_act_vq_pairs; int vtnet_requested_vq_pairs; int vtnet_max_vq_pairs; int vtnet_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int vtnet_setup_stat_sysctl (struct sysctl_ctx_list*,struct sysctl_oid_list*,struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_setup_sysctl(struct vtnet_softc *sc)
{
 device_t dev;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;

 dev = sc->vtnet_dev;
 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);

 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "max_vq_pairs",
     CTLFLAG_RD, &sc->vtnet_max_vq_pairs, 0,
     "Maximum number of supported virtqueue pairs");
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "requested_vq_pairs",
     CTLFLAG_RD, &sc->vtnet_requested_vq_pairs, 0,
     "Requested number of virtqueue pairs");
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "act_vq_pairs",
     CTLFLAG_RD, &sc->vtnet_act_vq_pairs, 0,
     "Number of active virtqueue pairs");

 vtnet_setup_stat_sysctl(ctx, child, sc);
}
