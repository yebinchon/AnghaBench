
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct drm_device {int pci_domain; int pci_bus; int pci_slot; int pci_func; int modesetting; TYPE_1__* driver; int busid_str; } ;
struct TYPE_2__ {int driver_features; } ;


 int CTLFLAG_RD ;
 int DRIVER_MODESET ;
 int ENOMEM ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,int ,int *) ;
 struct sysctl_oid* SYSCTL_ADD_STRING (struct sysctl_ctx_list*,int ,int ,char*,int ,int ,int ,int *) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int snprintf (int ,int,char*,int,int,int,int) ;

int
drm_add_busid_modesetting(struct drm_device *dev, struct sysctl_ctx_list *ctx,
    struct sysctl_oid *top)
{
 struct sysctl_oid *oid;

 snprintf(dev->busid_str, sizeof(dev->busid_str),
      "pci:%04x:%02x:%02x.%d", dev->pci_domain, dev->pci_bus,
      dev->pci_slot, dev->pci_func);
 oid = SYSCTL_ADD_STRING(ctx, SYSCTL_CHILDREN(top), OID_AUTO, "busid",
     CTLFLAG_RD, dev->busid_str, 0, ((void*)0));
 if (oid == ((void*)0))
  return (-ENOMEM);
 dev->modesetting = (dev->driver->driver_features & DRIVER_MODESET) != 0;
 oid = SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(top), OID_AUTO,
     "modesetting", CTLFLAG_RD, &dev->modesetting, 0, ((void*)0));
 if (oid == ((void*)0))
  return (-ENOMEM);

 return (0);
}
