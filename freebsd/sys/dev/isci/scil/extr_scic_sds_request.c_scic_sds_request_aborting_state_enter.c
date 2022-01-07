
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* task_context_buffer; } ;
struct TYPE_4__ {int abort; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_ABORTING ;
 int SET_STATE_HANDLER (TYPE_2__*,int ,int ) ;
 int scic_sds_request_state_handler_table ;

__attribute__((used)) static
void scic_sds_request_aborting_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;


   this_request->task_context_buffer->abort = 1;

   SET_STATE_HANDLER(
      this_request,
      scic_sds_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_ABORTING
   );
}
