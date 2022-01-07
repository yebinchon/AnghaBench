
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ core_object; } ;
typedef scalar_t__ SCI_LIBRARY_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_LIBRARY_T ;



SCI_LIBRARY_HANDLE_T scif_library_get_scic_handle(
   SCI_LIBRARY_HANDLE_T scif_library
)
{
   SCIF_SAS_LIBRARY_T * fw_library = (SCIF_SAS_LIBRARY_T*) scif_library;

   return fw_library->core_object;
}
