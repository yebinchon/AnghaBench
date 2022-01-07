
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int vmx_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int vmxnet3_setup_queue_sysctl (struct vmxnet3_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ;

__attribute__((used)) static void
vmxnet3_setup_sysctl(struct vmxnet3_softc *sc)
{
 device_t dev;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;

 dev = sc->vmx_dev;
 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);

 vmxnet3_setup_queue_sysctl(sc, ctx, child);
}
