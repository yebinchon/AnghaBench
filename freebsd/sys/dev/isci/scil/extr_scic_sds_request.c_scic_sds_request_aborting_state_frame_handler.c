
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int owning_controller; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;


 int SCI_SUCCESS ;
 int scic_sds_controller_release_frame (int ,int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_request_aborting_state_frame_handler(
   SCIC_SDS_REQUEST_T * this_request,
   U32 frame_index
)
{


   scic_sds_controller_release_frame(
      this_request->owning_controller, frame_index);

   return SCI_SUCCESS;
}
