
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oem_parameters; } ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;
typedef int SCIC_OEM_PARAMETERS_T ;


 int memcpy (int *,int *,int) ;

void scic_oem_parameters_get(
   SCI_CONTROLLER_HANDLE_T controller,
   SCIC_OEM_PARAMETERS_T * scic_parms
)
{
   SCIC_SDS_CONTROLLER_T * this_controller = (SCIC_SDS_CONTROLLER_T*)controller;

   memcpy(scic_parms, (&this_controller->oem_parameters), sizeof(*scic_parms));
}
