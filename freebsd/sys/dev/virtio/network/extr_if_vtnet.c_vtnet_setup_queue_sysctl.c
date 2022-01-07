
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_max_vq_pairs; int * vtnet_txqs; int * vtnet_rxqs; int vtnet_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int vtnet_setup_rxq_sysctl (struct sysctl_ctx_list*,struct sysctl_oid_list*,int *) ;
 int vtnet_setup_txq_sysctl (struct sysctl_ctx_list*,struct sysctl_oid_list*,int *) ;

__attribute__((used)) static void
vtnet_setup_queue_sysctl(struct vtnet_softc *sc)
{
 device_t dev;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;
 int i;

 dev = sc->vtnet_dev;
 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);

 for (i = 0; i < sc->vtnet_max_vq_pairs; i++) {
  vtnet_setup_rxq_sysctl(ctx, child, &sc->vtnet_rxqs[i]);
  vtnet_setup_txq_sysctl(ctx, child, &sc->vtnet_txqs[i]);
 }
}
