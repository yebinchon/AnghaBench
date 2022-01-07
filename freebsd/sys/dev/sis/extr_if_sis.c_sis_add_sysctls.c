
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sis_softc {scalar_t__ sis_manual_pad; int sis_dev; } ;


 int CTLFLAG_RWTUN ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,scalar_t__*,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;

__attribute__((used)) static void
sis_add_sysctls(struct sis_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children;
 int unit;

 ctx = device_get_sysctl_ctx(sc->sis_dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->sis_dev));

 unit = device_get_unit(sc->sis_dev);







 sc->sis_manual_pad = 0;
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "manual_pad",
     CTLFLAG_RWTUN, &sc->sis_manual_pad, 0, "Manually pad short frames");
}
