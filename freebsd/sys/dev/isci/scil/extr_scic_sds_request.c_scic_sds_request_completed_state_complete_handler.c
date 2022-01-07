
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {scalar_t__ was_tag_assigned_by_user; scalar_t__ saved_rx_frame_index; TYPE_1__ parent; int owning_controller; int io_tag; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_FINAL ;
 int SCI_SUCCESS ;
 scalar_t__ SCU_INVALID_FRAME_INDEX ;
 scalar_t__ TRUE ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_controller_free_io_tag (int ,int ) ;
 int scic_sds_controller_release_frame (int ,scalar_t__) ;
 int scic_sds_request_deinitialize_state_logging (TYPE_2__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_request_completed_state_complete_handler(
   SCI_BASE_REQUEST_T *request
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)request;

   if (this_request->was_tag_assigned_by_user != TRUE)
   {
      scic_controller_free_io_tag(
         this_request->owning_controller, this_request->io_tag
      );
   }

   if (this_request->saved_rx_frame_index != SCU_INVALID_FRAME_INDEX)
   {
      scic_sds_controller_release_frame(
         this_request->owning_controller, this_request->saved_rx_frame_index);
   }

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_FINAL
   );

   scic_sds_request_deinitialize_state_logging(this_request);

   return SCI_SUCCESS;
}
