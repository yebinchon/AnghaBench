
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef TYPE_2__* devclass_t ;
struct TYPE_8__ {int name; int * sysctl_tree; } ;
struct TYPE_7__ {int * sysctl_tree; int sysctl_ctx; scalar_t__ nameunit; TYPE_2__* devclass; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int DEVICE_SYSCTL_DESC ;
 int DEVICE_SYSCTL_DRIVER ;
 int DEVICE_SYSCTL_LOCATION ;
 int DEVICE_SYSCTL_PARENT ;
 int DEVICE_SYSCTL_PNPINFO ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int,int *,int,char*) ;
 int * SYSCTL_ADD_NODE_WITH_LABEL (int *,int ,int ,scalar_t__,int,int *,char*,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,TYPE_1__*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 scalar_t__ bus_get_domain (TYPE_1__*,int*) ;
 int devclass_sysctl_init (TYPE_2__*) ;
 int device_sysctl_handler ;
 scalar_t__ strlen (int ) ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static void
device_sysctl_init(device_t dev)
{
 devclass_t dc = dev->devclass;
 int domain;

 if (dev->sysctl_tree != ((void*)0))
  return;
 devclass_sysctl_init(dc);
 sysctl_ctx_init(&dev->sysctl_ctx);
 dev->sysctl_tree = SYSCTL_ADD_NODE_WITH_LABEL(&dev->sysctl_ctx,
     SYSCTL_CHILDREN(dc->sysctl_tree), OID_AUTO,
     dev->nameunit + strlen(dc->name),
     CTLFLAG_RD, ((void*)0), "", "device_index");
 SYSCTL_ADD_PROC(&dev->sysctl_ctx, SYSCTL_CHILDREN(dev->sysctl_tree),
     OID_AUTO, "%desc", CTLTYPE_STRING | CTLFLAG_RD,
     dev, DEVICE_SYSCTL_DESC, device_sysctl_handler, "A",
     "device description");
 SYSCTL_ADD_PROC(&dev->sysctl_ctx, SYSCTL_CHILDREN(dev->sysctl_tree),
     OID_AUTO, "%driver", CTLTYPE_STRING | CTLFLAG_RD,
     dev, DEVICE_SYSCTL_DRIVER, device_sysctl_handler, "A",
     "device driver name");
 SYSCTL_ADD_PROC(&dev->sysctl_ctx, SYSCTL_CHILDREN(dev->sysctl_tree),
     OID_AUTO, "%location", CTLTYPE_STRING | CTLFLAG_RD,
     dev, DEVICE_SYSCTL_LOCATION, device_sysctl_handler, "A",
     "device location relative to parent");
 SYSCTL_ADD_PROC(&dev->sysctl_ctx, SYSCTL_CHILDREN(dev->sysctl_tree),
     OID_AUTO, "%pnpinfo", CTLTYPE_STRING | CTLFLAG_RD,
     dev, DEVICE_SYSCTL_PNPINFO, device_sysctl_handler, "A",
     "device identification");
 SYSCTL_ADD_PROC(&dev->sysctl_ctx, SYSCTL_CHILDREN(dev->sysctl_tree),
     OID_AUTO, "%parent", CTLTYPE_STRING | CTLFLAG_RD,
     dev, DEVICE_SYSCTL_PARENT, device_sysctl_handler, "A",
     "parent device");
 if (bus_get_domain(dev, &domain) == 0)
  SYSCTL_ADD_INT(&dev->sysctl_ctx,
      SYSCTL_CHILDREN(dev->sysctl_tree), OID_AUTO, "%domain",
      CTLFLAG_RD, ((void*)0), domain, "NUMA domain");
}
