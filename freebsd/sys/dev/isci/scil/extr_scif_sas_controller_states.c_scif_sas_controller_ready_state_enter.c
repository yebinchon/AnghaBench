
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_READY ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scif_sas_controller_state_handler_table ;

__attribute__((used)) static
void scif_sas_controller_ready_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)object;

   SET_STATE_HANDLER(
      fw_controller,
      scif_sas_controller_state_handler_table,
      SCI_BASE_CONTROLLER_STATE_READY
   );
}
