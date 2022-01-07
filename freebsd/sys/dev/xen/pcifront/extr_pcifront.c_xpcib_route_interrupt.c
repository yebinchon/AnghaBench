
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intline; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int DPRINTF (char*,int,int) ;
 struct pci_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
xpcib_route_interrupt(device_t pcib, device_t dev, int pin)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 pcicfgregs *cfg = &dinfo->cfg;

 DPRINTF("route intr (pin=%d, line=%d)\n", pin, cfg->intline);

 return cfg->intline;
}
