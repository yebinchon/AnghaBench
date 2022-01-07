
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pci_device_table {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; scalar_t__ class_id; scalar_t__ subclass; scalar_t__ revid; scalar_t__ match_flag_revid; scalar_t__ match_flag_subclass; scalar_t__ match_flag_class; scalar_t__ match_flag_subdevice; scalar_t__ match_flag_subvendor; scalar_t__ match_flag_device; scalar_t__ match_flag_vendor; } ;
typedef int device_t ;


 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

const struct pci_device_table *
pci_match_device(device_t child, const struct pci_device_table *id, size_t nelt)
{
 bool match;
 uint16_t vendor, device, subvendor, subdevice, class, subclass, revid;

 vendor = pci_get_vendor(child);
 device = pci_get_device(child);
 subvendor = pci_get_subvendor(child);
 subdevice = pci_get_subdevice(child);
 class = pci_get_class(child);
 subclass = pci_get_subclass(child);
 revid = pci_get_revid(child);
 while (nelt-- > 0) {
  match = 1;
  if (id->match_flag_vendor)
   match &= vendor == id->vendor;
  if (id->match_flag_device)
   match &= device == id->device;
  if (id->match_flag_subvendor)
   match &= subvendor == id->subvendor;
  if (id->match_flag_subdevice)
   match &= subdevice == id->subdevice;
  if (id->match_flag_class)
   match &= class == id->class_id;
  if (id->match_flag_subclass)
   match &= subclass == id->subclass;
  if (id->match_flag_revid)
   match &= revid == id->revid;
  if (match)
   return (id);
  id++;
 }
 return (((void*)0));
}
