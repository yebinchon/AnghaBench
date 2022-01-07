
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_2__ {int interrupt_coalesce_timeout; int interrupt_coalesce_number; } ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;



void scic_controller_get_interrupt_coalescence(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 * coalesce_number,
   U32 * coalesce_timeout
)
{
   SCIC_SDS_CONTROLLER_T * scic_controller = (SCIC_SDS_CONTROLLER_T *)controller;
   *coalesce_number = scic_controller->interrupt_coalesce_number;
   *coalesce_timeout = scic_controller->interrupt_coalesce_timeout;
}
