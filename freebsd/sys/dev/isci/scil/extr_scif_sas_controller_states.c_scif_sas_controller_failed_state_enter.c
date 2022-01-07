
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ error; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;
 scalar_t__ SCI_CONTROLLER_FATAL_MEMORY_ERROR ;
 int SET_STATE_HANDLER (TYPE_2__*,int ,int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int scif_cb_controller_error (TYPE_2__*,scalar_t__) ;
 int scif_sas_controller_release_resource (TYPE_2__*) ;
 int scif_sas_controller_state_handler_table ;

__attribute__((used)) static
void scif_sas_controller_failed_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)object;

   SCIF_LOG_ERROR((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "Controller: entered FAILED state.\n"
   ));

   SET_STATE_HANDLER(
      fw_controller,
      scif_sas_controller_state_handler_table,
      SCI_BASE_CONTROLLER_STATE_FAILED
   );

   if (fw_controller->parent.error != SCI_CONTROLLER_FATAL_MEMORY_ERROR)
   {

       scif_sas_controller_release_resource(fw_controller);


       scif_cb_controller_error(fw_controller, fw_controller->parent.error);
   }
}
