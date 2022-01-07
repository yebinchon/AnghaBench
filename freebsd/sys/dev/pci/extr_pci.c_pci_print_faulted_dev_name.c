
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; int bus; int slot; int func; int dev; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 char* device_get_name (int ) ;
 int device_get_unit (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
pci_print_faulted_dev_name(const struct pci_devinfo *dinfo)
{
 const char *dev_name;
 device_t dev;

 dev = dinfo->cfg.dev;
 printf("pci%d:%d:%d:%d", dinfo->cfg.domain, dinfo->cfg.bus,
     dinfo->cfg.slot, dinfo->cfg.func);
 dev_name = device_get_name(dev);
 if (dev_name != ((void*)0))
  printf(" (%s%d)", dev_name, device_get_unit(dev));
}
