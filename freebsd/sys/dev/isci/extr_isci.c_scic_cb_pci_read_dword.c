
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct isci_softc {TYPE_1__* pci_bar; } ;
struct ISCI_CONTROLLER {struct isci_softc* isci; } ;
typedef int bus_size_t ;
struct TYPE_2__ {int bus_handle; int bus_tag; } ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int POINTER_UINT ;


 size_t bus_space_read_4 (int ,int ,int ) ;
 scalar_t__ sci_object_get_association (int ) ;

uint32_t
scic_cb_pci_read_dword(SCI_CONTROLLER_HANDLE_T scic_controller, void *address)
{
 SCI_CONTROLLER_HANDLE_T scif_controller =
  (SCI_CONTROLLER_HANDLE_T)sci_object_get_association(scic_controller);
 struct ISCI_CONTROLLER *isci_controller =
  (struct ISCI_CONTROLLER *)sci_object_get_association(scif_controller);
 struct isci_softc *isci = isci_controller->isci;
 uint32_t bar = (uint32_t)(((POINTER_UINT)address & 0xF0000000) >> 28);
 bus_size_t offset = (bus_size_t)((POINTER_UINT)address & 0x0FFFFFFF);

 return (bus_space_read_4(isci->pci_bar[bar].bus_tag,
     isci->pci_bar[bar].bus_handle, offset));
}
