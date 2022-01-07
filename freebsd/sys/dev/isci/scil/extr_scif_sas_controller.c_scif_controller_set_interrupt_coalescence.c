
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
typedef scalar_t__ U16 ;
struct TYPE_3__ {int core_object; scalar_t__ saved_interrupt_coalesce_timeout; scalar_t__ saved_interrupt_coalesce_number; } ;
typedef scalar_t__ SCI_STATUS ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 scalar_t__ SCI_SUCCESS ;
 int scic_controller_get_interrupt_coalescence (int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ scic_controller_set_interrupt_coalescence (int ,scalar_t__,scalar_t__) ;
 scalar_t__ scif_sas_controller_is_overriding_interrupt_coalescence (TYPE_1__*) ;

SCI_STATUS scif_controller_set_interrupt_coalescence(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 coalesce_number,
   U32 coalesce_timeout
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T * )controller;





   if (scif_sas_controller_is_overriding_interrupt_coalescence(fw_controller))
   {
      U32 curr_coalesce_number;
      U32 curr_coalesce_timeout;
      SCI_STATUS core_status;


      scic_controller_get_interrupt_coalescence (
         fw_controller->core_object, &curr_coalesce_number, &curr_coalesce_timeout);



      core_status = scic_controller_set_interrupt_coalescence(
                       fw_controller->core_object, coalesce_number, coalesce_timeout);

      if ( core_status == SCI_SUCCESS )
      {
         fw_controller->saved_interrupt_coalesce_number = (U16)coalesce_number;
         fw_controller->saved_interrupt_coalesce_timeout = coalesce_timeout;
      }


      scic_controller_set_interrupt_coalescence(
         fw_controller->core_object, curr_coalesce_number, curr_coalesce_timeout);

      return core_status;
   }
   else
   {


      return scic_controller_set_interrupt_coalescence(
                fw_controller->core_object, coalesce_number, coalesce_timeout);
   }
}
