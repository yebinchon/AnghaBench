
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct _pcsid {scalar_t__ type; int desc; } ;
typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,int ) ;
 size_t nitems (struct _pcsid*) ;
 scalar_t__ pci_get_devid (int ) ;
 struct _pcsid* pci_ids ;

__attribute__((used)) static int
ioat_probe(device_t device)
{
 struct _pcsid *ep;
 u_int32_t type;

 type = pci_get_devid(device);
 for (ep = pci_ids; ep < &pci_ids[nitems(pci_ids)]; ep++) {
  if (ep->type == type) {
   device_set_desc(device, ep->desc);
   return (0);
  }
 }
 return (ENXIO);
}
