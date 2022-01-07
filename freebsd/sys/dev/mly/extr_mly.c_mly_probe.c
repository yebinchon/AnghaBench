
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_ident {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int debug_called (int) ;
 int device_set_desc (int ,int ) ;
 struct mly_ident* mly_identifiers ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
mly_probe(device_t dev)
{
    struct mly_ident *m;

    debug_called(1);

    for (m = mly_identifiers; m->vendor != 0; m++) {
 if ((m->vendor == pci_get_vendor(dev)) &&
     (m->device == pci_get_device(dev)) &&
     ((m->subvendor == 0) || ((m->subvendor == pci_get_subvendor(dev)) &&
         (m->subdevice == pci_get_subdevice(dev))))) {

     device_set_desc(dev, m->desc);
     return(BUS_PROBE_DEFAULT);
 }
    }
    return(ENXIO);
}
