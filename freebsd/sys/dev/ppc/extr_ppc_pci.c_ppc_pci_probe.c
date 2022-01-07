
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_id {int type; int rid; int desc; } ;
typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,int ) ;
 int pci_get_devid (int ) ;
 struct pci_id* pci_ids ;
 int ppc_probe (int ,int ) ;

__attribute__((used)) static int
ppc_pci_probe(device_t dev)
{
 struct pci_id *id;
 uint32_t type;

 type = pci_get_devid(dev);
 id = pci_ids;
 while (id->type != 0xffff && id->type != type)
  id++;
 if (id->type == 0xffff)
  return (ENXIO);
 device_set_desc(dev, id->desc);
 return (ppc_probe(dev, id->rid));
}
