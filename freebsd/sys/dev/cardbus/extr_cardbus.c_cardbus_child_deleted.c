
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dev; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;
struct cardbus_devinfo {TYPE_2__ pci; } ;
typedef scalar_t__ device_t ;


 int cardbus_device_destroy (struct cardbus_devinfo*) ;
 struct cardbus_devinfo* device_get_ivars (scalar_t__) ;
 int device_printf (scalar_t__,char*) ;
 int pci_child_deleted (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
cardbus_child_deleted(device_t cbdev, device_t child)
{
 struct cardbus_devinfo *dinfo = device_get_ivars(child);

 if (dinfo->pci.cfg.dev != child)
  device_printf(cbdev, "devinfo dev mismatch\n");
 cardbus_device_destroy(dinfo);
 pci_child_deleted(cbdev, child);
}
