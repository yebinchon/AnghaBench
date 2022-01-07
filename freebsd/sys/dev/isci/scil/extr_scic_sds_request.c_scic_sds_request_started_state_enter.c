
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ has_started_substate_machine; int started_substate_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_STARTED ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 scalar_t__ TRUE ;
 int sci_base_state_machine_start (int *) ;
 int scic_sds_request_state_handler_table ;

__attribute__((used)) static
void scic_sds_request_started_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;

   SET_STATE_HANDLER(
      this_request,
      scic_sds_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_STARTED
   );



   if (this_request->has_started_substate_machine == TRUE)
      sci_base_state_machine_start(&this_request->started_substate_machine);
}
