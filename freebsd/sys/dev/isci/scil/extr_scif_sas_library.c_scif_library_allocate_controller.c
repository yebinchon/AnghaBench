
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int core_object; } ;
struct TYPE_7__ {int core_object; } ;
typedef scalar_t__ SCI_STATUS ;
typedef scalar_t__ SCI_LIBRARY_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_LIBRARY_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_LIBRARY ;
 int SCIF_LOG_WARNING (int ) ;
 int SCI_BASE_LIBRARY_ALLOCATE_CONTROLLER (TYPE_1__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 scalar_t__ SCI_INVALID_HANDLE ;
 scalar_t__ SCI_SUCCESS ;
 int memset (TYPE_2__*,int ,int) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 scalar_t__ scic_library_allocate_controller (int ,int *) ;
 int scif_library_free_controller (scalar_t__,TYPE_2__*) ;

SCI_STATUS scif_library_allocate_controller(
   SCI_LIBRARY_HANDLE_T library,
   SCI_CONTROLLER_HANDLE_T * new_controller
)
{
   SCI_STATUS status;


   if (library != SCI_INVALID_HANDLE)
   {
      SCIF_SAS_LIBRARY_T * fw_library = (SCIF_SAS_LIBRARY_T *) library;


      SCI_BASE_LIBRARY_ALLOCATE_CONTROLLER(fw_library, new_controller, &status);
      if (status == SCI_SUCCESS)
      {
         SCIF_SAS_CONTROLLER_T * fw_controller;



         fw_controller = (SCIF_SAS_CONTROLLER_T*) *new_controller;


         memset(fw_controller, 0, sizeof(SCIF_SAS_CONTROLLER_T));

         status = scic_library_allocate_controller(
                     fw_library->core_object, &(fw_controller->core_object)
                  );



         if (status != SCI_SUCCESS)
            scif_library_free_controller(library, fw_controller);
      }

      if (status != SCI_SUCCESS)
      {
         SCIF_LOG_WARNING((
            sci_base_object_get_logger(fw_library),
            SCIF_LOG_OBJECT_LIBRARY,
            "Library:0x%x Status:0x%x controller allocation failed\n",
            fw_library, status
         ));
      }
   }
   else
      status = SCI_FAILURE_INVALID_PARAMETER_VALUE;

   return status;
}
