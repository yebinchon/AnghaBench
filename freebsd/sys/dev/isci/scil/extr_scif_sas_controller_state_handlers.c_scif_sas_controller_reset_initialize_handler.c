
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_9__ {int state_machine; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_10__ {TYPE_2__ parent; int core_object; TYPE_1__ hprq; int * domains; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_3__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_INITIALIZATION ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_INITIALIZED ;
 int SCI_BASE_CONTROLLER_STATE_INITIALIZING ;
 size_t SCI_MAX_DOMAINS ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_controller_initialize (int ) ;
 int scif_cb_lock_associate (TYPE_3__*,int *) ;
 int scif_sas_controller_build_mdl (TYPE_3__*) ;
 int scif_sas_controller_release_resource (TYPE_3__*) ;
 int scif_sas_domain_initialize (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_reset_initialize_handler(
   SCI_BASE_CONTROLLER_T * controller
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)controller;
   SCI_STATUS status;
   U32 index;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_controller_reset_initialize_handler(0x%x) enter\n",
      controller
   ));

   sci_base_state_machine_change_state(
      &fw_controller->parent.state_machine,
      SCI_BASE_CONTROLLER_STATE_INITIALIZING
   );

   scif_sas_controller_build_mdl(fw_controller);


   for (index = 0; index < SCI_MAX_DOMAINS; index++)
      scif_sas_domain_initialize(&fw_controller->domains[index]);

   scif_cb_lock_associate(fw_controller, &fw_controller->hprq.lock);


   status = scic_controller_initialize(fw_controller->core_object);
   if (status == SCI_SUCCESS)
   {
      sci_base_state_machine_change_state(
         &fw_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_INITIALIZED
      );
   }

   if (status != SCI_SUCCESS)
   {

      scif_sas_controller_release_resource(fw_controller);

      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
         "Controller:0x%x Status:0x%x unable to successfully initialize.\n",
         fw_controller, status
      ));
   }

   return status;
}
