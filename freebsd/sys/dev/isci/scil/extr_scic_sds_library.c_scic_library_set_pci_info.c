
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pci_revision; int pci_device; } ;
struct TYPE_4__ {scalar_t__ revision; int device_id; } ;
typedef TYPE_1__ SCI_PCI_COMMON_HEADER_T ;
typedef scalar_t__ SCI_LIBRARY_HANDLE_T ;
typedef TYPE_2__ SCIC_SDS_LIBRARY_T ;


 scalar_t__ SCIC_SDS_PCI_REVISION_A0 ;
 void* SCIC_SDS_PCI_REVISION_A2 ;
 scalar_t__ SCIC_SDS_PCI_REVISION_B0 ;

void scic_library_set_pci_info(
   SCI_LIBRARY_HANDLE_T library,
   SCI_PCI_COMMON_HEADER_T * pci_header
)
{
   SCIC_SDS_LIBRARY_T *this_library;
   this_library = (SCIC_SDS_LIBRARY_T *)library;

   this_library->pci_device = pci_header->device_id;
}
