
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
typedef int U16 ;
struct TYPE_2__ {int pci_device; scalar_t__ pci_revision; } ;
typedef scalar_t__ SCI_LIBRARY_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_LIBRARY_T ;


 scalar_t__ SCU_PBG_HBA_REV_B0 ;
 scalar_t__ SCU_PBG_HBA_REV_C0 ;
 scalar_t__ SCU_PBG_HBA_REV_C1 ;

U8 scic_library_get_pci_device_controller_count(
   SCI_LIBRARY_HANDLE_T library
)
{
   SCIC_SDS_LIBRARY_T *this_library;
   U16 device_id;

   this_library = (SCIC_SDS_LIBRARY_T *)library;
   device_id = this_library->pci_device;


   if (




         ((device_id & 0xFFF1) == 0x1D60)
      && (
            (this_library->pci_revision == SCU_PBG_HBA_REV_B0)
         || (this_library->pci_revision == SCU_PBG_HBA_REV_C0)
         || (this_library->pci_revision == SCU_PBG_HBA_REV_C1)
         )
      )
      return 2;
   else
      return 1;
}
