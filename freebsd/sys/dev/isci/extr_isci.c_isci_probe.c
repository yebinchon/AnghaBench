
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct _pcsid {scalar_t__ type; scalar_t__ desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,scalar_t__) ;
 scalar_t__ pci_get_devid (int ) ;
 struct _pcsid* pci_ids ;

__attribute__((used)) static int
isci_probe (device_t device)
{
 u_int32_t type = pci_get_devid(device);
 struct _pcsid *ep = pci_ids;

 while (ep->type && ep->type != type)
  ++ep;

 if (ep->desc)
 {
  device_set_desc(device, ep->desc);
  return (BUS_PROBE_DEFAULT);
 }
 else
  return (ENXIO);
}
