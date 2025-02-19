
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_6__ {int phy_index; } ;
struct TYPE_5__ {TYPE_3__* phy_table; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_WARNING (int ) ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_FAILURE_INVALID_STATE ;
 size_t SCI_MAX_PHYS ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 scalar_t__ scic_phy_stop (TYPE_3__*) ;

SCI_STATUS scic_sds_controller_stop_phys(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 index;
   SCI_STATUS status;
   SCI_STATUS phy_status;

   status = SCI_SUCCESS;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      phy_status = scic_phy_stop(&this_controller->phy_table[index]);

      if (
              (phy_status != SCI_SUCCESS)
           && (phy_status != SCI_FAILURE_INVALID_STATE)
         )
      {
         status = SCI_FAILURE;

         SCIC_LOG_WARNING((
            sci_base_object_get_logger(this_controller),
            SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PHY,
            "Controller stop operation failed to stop phy %d because of status %d.\n",
            this_controller->phy_table[index].phy_index, phy_status
         ));
      }
   }

   return status;
}
