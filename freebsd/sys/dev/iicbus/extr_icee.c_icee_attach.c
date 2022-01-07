
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct icee_softc {scalar_t__ size; scalar_t__ type; scalar_t__ wr_sz; TYPE_1__* cdev; int dev; int addr; } ;
typedef int device_t ;
struct TYPE_2__ {struct icee_softc* si_drv1; } ;


 int CTLFLAG_RD ;
 int EINVAL ;
 int ENOMEM ;
 int GID_WHEEL ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,scalar_t__*,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int UID_ROOT ;
 scalar_t__ bootverbose ;
 struct icee_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,scalar_t__,scalar_t__,...) ;
 int icee_cdevsw ;
 int icee_init (struct icee_softc*) ;
 int iicbus_get_addr (int ) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;

__attribute__((used)) static int
icee_attach(device_t dev)
{
 struct icee_softc *sc = device_get_softc(dev);
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *tree;

 sc->dev = dev;
 sc->addr = iicbus_get_addr(dev);
 icee_init(sc);
 if (sc->size == 0 || sc->type == 0 || sc->wr_sz == 0) {
  device_printf(sc->dev, "Missing config data, "
      "these cannot be zero: size %d type %d wr_sz %d\n",
      sc->size, sc->type, sc->wr_sz);
  return (EINVAL);
 }
 if (bootverbose)
  device_printf(dev, "size: %d bytes, addressing: %d-bits\n",
      sc->size, sc->type);
 sc->cdev = make_dev(&icee_cdevsw, device_get_unit(dev), UID_ROOT,
     GID_WHEEL, 0600, "icee%d", device_get_unit(dev));
 if (sc->cdev == ((void*)0)) {
  return (ENOMEM);
 }
 sc->cdev->si_drv1 = sc;

 ctx = device_get_sysctl_ctx(dev);
 tree = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));
 SYSCTL_ADD_INT(ctx, tree, OID_AUTO, "address_size", CTLFLAG_RD,
     &sc->type, 0, "Memory array address size in bits");
 SYSCTL_ADD_INT(ctx, tree, OID_AUTO, "device_size", CTLFLAG_RD,
     &sc->size, 0, "Memory array capacity in bytes");
 SYSCTL_ADD_INT(ctx, tree, OID_AUTO, "write_size", CTLFLAG_RD,
     &sc->wr_sz, 0, "Memory array page write size in bytes");

 return (0);
}
