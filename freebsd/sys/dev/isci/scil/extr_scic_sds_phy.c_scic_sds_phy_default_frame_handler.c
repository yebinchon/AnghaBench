
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {int state_machine; } ;
struct TYPE_7__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_get_state (int *) ;
 int scic_sds_controller_release_frame (int ,int ) ;
 int scic_sds_phy_get_controller (TYPE_2__*) ;

SCI_STATUS scic_sds_phy_default_frame_handler(
   SCIC_SDS_PHY_T *this_phy,
   U32 frame_index
)
{
   SCIC_LOG_WARNING((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "SCIC Phy 0x%08x received unexpected frame data %d while in state %d\n",
      this_phy, frame_index,
      sci_base_state_machine_get_state(&this_phy->parent.state_machine)
   ));

   scic_sds_controller_release_frame(
      scic_sds_phy_get_controller(this_phy), frame_index);

   return SCI_FAILURE_INVALID_STATE;
}
