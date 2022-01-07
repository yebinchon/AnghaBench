
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_table {int descr; scalar_t__ driver_data; } ;
struct amd_ntb_softc {struct amd_ntb_hw_info* hw_info; int spad_count; } ;
struct amd_ntb_hw_info {int spad_count; } ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 struct pci_device_table* PCI_MATCH (int ,int ) ;
 int amd_ntb_devs ;
 struct amd_ntb_softc* device_get_softc (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
amd_ntb_probe(device_t device)
{
 struct amd_ntb_softc *ntb = device_get_softc(device);
 const struct pci_device_table *tbl;

 tbl = PCI_MATCH(device, amd_ntb_devs);
 if (tbl == ((void*)0))
  return (ENXIO);

 ntb->hw_info = (struct amd_ntb_hw_info *)tbl->driver_data;
 ntb->spad_count = ntb->hw_info->spad_count;
 device_set_desc(device, tbl->descr);

 return (BUS_PROBE_GENERIC);
}
