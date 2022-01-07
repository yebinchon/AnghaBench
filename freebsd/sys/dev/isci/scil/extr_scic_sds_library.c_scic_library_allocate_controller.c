
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pci_device; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_LIBRARY_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_LIBRARY_T ;


 int SCI_BASE_LIBRARY_ALLOCATE_CONTROLLER (TYPE_1__*,int *,int *) ;
 int SCI_FAILURE_UNSUPPORTED_PCI_DEVICE_ID ;

SCI_STATUS scic_library_allocate_controller(
   SCI_LIBRARY_HANDLE_T library,
   SCI_CONTROLLER_HANDLE_T *new_controller
)
{
   SCI_STATUS status;
   SCIC_SDS_LIBRARY_T *this_library;

   this_library = (SCIC_SDS_LIBRARY_T *)library;

   if (
         ( (this_library->pci_device >= 0x1D60)
         && (this_library->pci_device <= 0x1D62)
         )
      || ( (this_library->pci_device >= 0x1D64)
         && (this_library->pci_device <= 0x1D65)
         )
      || ( (this_library->pci_device >= 0x1D68)
         && (this_library->pci_device <= 0x1D6F)
         )
      )
   {
      SCI_BASE_LIBRARY_ALLOCATE_CONTROLLER(
         this_library, new_controller, &status);
   }
   else
      status = SCI_FAILURE_UNSUPPORTED_PCI_DEVICE_ID;

   return status;
}
