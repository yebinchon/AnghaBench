
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ subvendor; scalar_t__ subdevice; int * desc; } ;


 TYPE_1__* ciss_vendor_data ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;

__attribute__((used)) static int
ciss_lookup(device_t dev)
{
    int i;

    for (i = 0; ciss_vendor_data[i].desc != ((void*)0); i++)
 if ((pci_get_subvendor(dev) == ciss_vendor_data[i].subvendor) &&
     (pci_get_subdevice(dev) == ciss_vendor_data[i].subdevice)) {
     return(i);
 }
    return(-1);
}
