
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {void* is_in_link_training; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_OBJECT_RECEIVED_EVENTS ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;


 void* TRUE ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scic_sds_phy_start_sas_link_training (TYPE_1__*) ;
 int scic_sds_phy_start_sata_link_training (TYPE_1__*) ;
 int scu_get_event_code (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_starting_substate_await_ossp_event_handler(
   SCIC_SDS_PHY_T *this_phy,
   U32 event_code
)
{
   U32 result = SCI_SUCCESS;

   switch (scu_get_event_code(event_code))
   {
   case 129:
      scic_sds_phy_start_sas_link_training(this_phy);
      this_phy->is_in_link_training = TRUE;
   break;

   case 128:
      scic_sds_phy_start_sata_link_training(this_phy);
      this_phy->is_in_link_training = TRUE;
   break;

   default:
      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_phy),
         SCIC_LOG_OBJECT_PHY | SCIC_LOG_OBJECT_RECEIVED_EVENTS,
         "PHY starting substate machine received unexpected event_code %x\n",
         event_code
      ));

      result = SCI_FAILURE;
   break;
   }

   return result;
}
