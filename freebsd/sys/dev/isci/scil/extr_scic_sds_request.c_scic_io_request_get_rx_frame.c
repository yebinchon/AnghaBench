
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_4__ {scalar_t__ saved_rx_frame_index; TYPE_1__* owning_controller; } ;
struct TYPE_3__ {int uf_control; } ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int ASSERT (int) ;
 scalar_t__ SCU_INVALID_FRAME_INDEX ;
 scalar_t__ SCU_UNSOLICITED_FRAME_BUFFER_SIZE ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,scalar_t__,void**) ;

void * scic_io_request_get_rx_frame(
   SCI_IO_REQUEST_HANDLE_T scic_io_request,
   U32 offset
)
{
   void * frame_buffer = ((void*)0);
   SCIC_SDS_REQUEST_T * this_request = (SCIC_SDS_REQUEST_T *)scic_io_request;

   ASSERT(offset < SCU_UNSOLICITED_FRAME_BUFFER_SIZE);

   if (this_request->saved_rx_frame_index != SCU_INVALID_FRAME_INDEX)
   {
      scic_sds_unsolicited_frame_control_get_buffer(
         &(this_request->owning_controller->uf_control),
         this_request->saved_rx_frame_index,
         &frame_buffer
      );
   }

   return frame_buffer;
}
