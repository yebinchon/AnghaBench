
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_parameters; } ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_USER_PARAMETERS_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int memcpy (int *,int *,int) ;

void scic_user_parameters_get(
   SCI_CONTROLLER_HANDLE_T controller,
   SCIC_USER_PARAMETERS_T * scic_parms
)
{
   SCIC_SDS_CONTROLLER_T * this_controller = (SCIC_SDS_CONTROLLER_T*)controller;

   memcpy(scic_parms, (&this_controller->user_parameters), sizeof(*scic_parms));
}
