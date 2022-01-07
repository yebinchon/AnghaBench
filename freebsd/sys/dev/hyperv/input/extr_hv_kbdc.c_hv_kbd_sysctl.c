
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_3__ {int debug; } ;
typedef TYPE_1__ hv_kbd_sc ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
hv_kbd_sysctl(device_t dev)
{
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;
 hv_kbd_sc *sc;

 sc = device_get_softc(dev);
 ctx = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "debug", CTLFLAG_RW,
     &sc->debug, 0, "debug hyperv keyboard");
}
