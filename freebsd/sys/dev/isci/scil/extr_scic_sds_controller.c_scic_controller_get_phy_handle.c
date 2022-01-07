
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_5__ {int * phy_table; } ;
typedef int SCI_STATUS ;
typedef int * SCI_PHY_HANDLE_T ;
typedef TYPE_1__* SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 size_t ARRAY_SIZE (int *) ;
 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE_INVALID_PHY ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_1__*) ;

SCI_STATUS scic_controller_get_phy_handle(
   SCI_CONTROLLER_HANDLE_T controller,
   U8 phy_index,
   SCI_PHY_HANDLE_T * phy_handle
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_controller_get_phy_handle(0x%x, 0x%x, 0x%x) enter\n",
      controller, phy_index, phy_handle
   ));

   if (phy_index < ARRAY_SIZE(this_controller->phy_table))
   {
      *phy_handle = &this_controller->phy_table[phy_index];

      return SCI_SUCCESS;
   }

   SCIC_LOG_ERROR((
      sci_base_object_get_logger(this_controller),
      SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_CONTROLLER,
      "Controller:0x%x PhyId:0x%x invalid phy index\n",
      this_controller, phy_index
   ));

   return SCI_FAILURE_INVALID_PHY;
}
