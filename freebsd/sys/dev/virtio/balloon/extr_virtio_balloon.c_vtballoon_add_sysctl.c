
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtballoon_softc {int vtballoon_current_npages; int vtballoon_desired_npages; int vtballoon_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
vtballoon_add_sysctl(struct vtballoon_softc *sc)
{
 device_t dev;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;

 dev = sc->vtballoon_dev;
 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "desired",
     CTLFLAG_RD, &sc->vtballoon_desired_npages, sizeof(uint32_t),
     "Desired balloon size in pages");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "current",
     CTLFLAG_RD, &sc->vtballoon_current_npages, sizeof(uint32_t),
     "Current balloon size in pages");
}
