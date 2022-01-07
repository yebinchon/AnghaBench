
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int memory_descriptors; int parent; int pci_revision; int controller_index; } ;
struct TYPE_11__ {int pci_revision; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__* SCI_LIBRARY_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_LIBRARY_T ;
typedef TYPE_3__ SCIC_SDS_CONTROLLER_T ;


 int ARRAY_SIZE (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_INITIALIZATION ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_SUCCESS ;
 int memset (TYPE_3__*,int ,int) ;
 int sci_base_controller_construct (int *,int ,int ,int ,int ,int *) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_object_set_association (scalar_t__,void*) ;
 int scic_sds_controller_initialize_state_logging (TYPE_3__*) ;
 int scic_sds_controller_state_table ;
 int scic_sds_library_get_controller_index (TYPE_1__*,TYPE_3__*) ;
 int scic_sds_pci_bar_initialization (TYPE_3__*) ;

SCI_STATUS scic_controller_construct(
   SCI_LIBRARY_HANDLE_T library,
   SCI_CONTROLLER_HANDLE_T controller,
   void * user_object
)
{
   SCIC_SDS_LIBRARY_T *my_library;
   SCIC_SDS_CONTROLLER_T *this_controller;

   my_library = (SCIC_SDS_LIBRARY_T *)library;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(library),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_INITIALIZATION,
      "scic_controller_construct(0x%x, 0x%x) enter\n",
      library, controller
   ));


   memset(this_controller, 0, sizeof(SCIC_SDS_CONTROLLER_T));





   this_controller->controller_index =
      scic_sds_library_get_controller_index(my_library, this_controller);

   this_controller->pci_revision = my_library->pci_revision;

   sci_base_controller_construct(
      &this_controller->parent,
      sci_base_object_get_logger(my_library),
      scic_sds_controller_state_table,
      this_controller->memory_descriptors,
      ARRAY_SIZE(this_controller->memory_descriptors),
      ((void*)0)
   );

   sci_object_set_association(controller, user_object);

   scic_sds_controller_initialize_state_logging(this_controller);

   scic_sds_pci_bar_initialization(this_controller);

   return SCI_SUCCESS;
}
