
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_started_substate_machine; int started_substate_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;


 scalar_t__ TRUE ;
 int sci_base_state_machine_stop (int *) ;

__attribute__((used)) static
void scic_sds_request_started_state_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;

   if (this_request->has_started_substate_machine == TRUE)
      sci_base_state_machine_stop(&this_request->started_substate_machine);
}
