
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int * device_t ;
struct TYPE_3__ {int Function; int Device; } ;
typedef TYPE_1__ ACPI_DMAR_PCI_PATH ;


 int PCIR_SECBUS_1 ;
 int PCI_RID (int,int ,int ) ;
 int pci_cfgregread (int,int ,int ,int ,int) ;
 int * pci_find_dbsf (int,int,int ,int ) ;

__attribute__((used)) static device_t
dmar_path_dev(int segment, int path_len, int busno,
    const ACPI_DMAR_PCI_PATH *path, uint16_t *rid)
{
 device_t dev;
 int i;

 dev = ((void*)0);
 for (i = 0; i < path_len; i++) {
  dev = pci_find_dbsf(segment, busno, path->Device,
      path->Function);
  if (i != path_len - 1) {
   busno = pci_cfgregread(busno, path->Device,
       path->Function, PCIR_SECBUS_1, 1);
   path++;
  }
 }
 *rid = PCI_RID(busno, path->Device, path->Function);
 return (dev);
}
