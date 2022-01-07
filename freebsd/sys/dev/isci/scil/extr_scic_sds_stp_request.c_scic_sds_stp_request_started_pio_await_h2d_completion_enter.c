
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int target_device; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;


 int SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_H2D_COMPLETION_SUBSTATE ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int scic_sds_remote_device_set_working_request (int ,TYPE_1__*) ;
 int scic_sds_stp_request_started_pio_substate_handler_table ;

__attribute__((used)) static
void scic_sds_stp_request_started_pio_await_h2d_completion_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;

   SET_STATE_HANDLER(
      this_request,
      scic_sds_stp_request_started_pio_substate_handler_table,
      SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_H2D_COMPLETION_SUBSTATE
   );

   scic_sds_remote_device_set_working_request(
      this_request->target_device, this_request);
}
