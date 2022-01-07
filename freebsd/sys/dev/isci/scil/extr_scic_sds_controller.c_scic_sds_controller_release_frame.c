
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {int get; } ;
struct TYPE_5__ {TYPE_2__ uf_control; } ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCU_UFQGP_WRITE (TYPE_1__*,int ) ;
 scalar_t__ TRUE ;
 scalar_t__ scic_sds_unsolicited_frame_control_release_frame (TYPE_2__*,int ) ;

void scic_sds_controller_release_frame(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U32 frame_index
)
{
   if (scic_sds_unsolicited_frame_control_release_frame(
          &this_controller->uf_control, frame_index) == TRUE)
      SCU_UFQGP_WRITE(this_controller, this_controller->uf_control.get);
}
