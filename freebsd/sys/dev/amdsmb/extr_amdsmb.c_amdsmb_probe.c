
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_table {int descr; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct pci_device_table* PCI_MATCH (int ,int ) ;
 int amdsmb_devs ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
amdsmb_probe(device_t dev)
{
 const struct pci_device_table *tbl;

 tbl = PCI_MATCH(dev, amdsmb_devs);
 if (tbl == ((void*)0))
  return (ENXIO);
 device_set_desc(dev, tbl->descr);

 return (BUS_PROBE_DEFAULT);
}
