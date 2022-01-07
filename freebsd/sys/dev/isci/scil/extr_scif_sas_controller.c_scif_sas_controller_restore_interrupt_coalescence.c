
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int saved_interrupt_coalesce_timeout; int saved_interrupt_coalesce_number; int core_object; } ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 int scic_controller_set_interrupt_coalescence (int ,int ,int ) ;
 int scif_sas_controller_is_overriding_interrupt_coalescence (TYPE_1__*) ;

void scif_sas_controller_restore_interrupt_coalescence(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   if ( !scif_sas_controller_is_overriding_interrupt_coalescence(fw_controller))
      scic_controller_set_interrupt_coalescence(
         fw_controller->core_object,
         fw_controller->saved_interrupt_coalesce_number,
         fw_controller->saved_interrupt_coalesce_timeout
      );
}
