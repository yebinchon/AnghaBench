
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_2__ {int core_object; } ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 int scic_controller_get_interrupt_coalescence (int ,int *,int *) ;

void scif_controller_get_interrupt_coalescence(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 * coalesce_number,
   U32 * coalesce_timeout
)
{
   SCIF_SAS_CONTROLLER_T * scif_controller = (SCIF_SAS_CONTROLLER_T * )controller;

   scic_controller_get_interrupt_coalescence(
      scif_controller->core_object, coalesce_number, coalesce_timeout);
}
