
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pcibus_devinfo {int opd_obdinfo; } ;
typedef int device_t ;


 struct ofw_pcibus_devinfo* device_get_ivars (int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int pci_child_deleted (int ,int ) ;

__attribute__((used)) static void
ofw_pcibus_child_deleted(device_t dev, device_t child)
{
 struct ofw_pcibus_devinfo *dinfo;

 dinfo = device_get_ivars(dev);
 ofw_bus_gen_destroy_devinfo(&dinfo->opd_obdinfo);
 pci_child_deleted(dev, child);
}
