
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int dummy; } ;
struct adapter {int dev; } ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_cfg_restore (int ,struct pci_devinfo*) ;

int
t3_os_pci_restore_state(struct adapter *sc)
{
 device_t dev;
 struct pci_devinfo *dinfo;

 dev = sc->dev;
 dinfo = device_get_ivars(dev);

 pci_cfg_restore(dev, dinfo);
 return (0);
}
