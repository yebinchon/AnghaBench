
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ioat_softc {int device; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int pci_get_devid (int ) ;

__attribute__((used)) static boolean_t
ioat_model_resets_msix(struct ioat_softc *ioat)
{
 u_int32_t pciid;

 pciid = pci_get_devid(ioat->device);
 switch (pciid) {

 case 0x0c508086:
 case 0x0c518086:
 case 0x0c528086:
 case 0x0c538086:

 case 0x6f508086:
 case 0x6f518086:
 case 0x6f528086:
 case 0x6f538086:
  return (TRUE);
 }

 return (FALSE);
}
