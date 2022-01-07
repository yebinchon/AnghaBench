
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* state_handlers; } ;
struct TYPE_6__ {int (* consume_power_handler ) (TYPE_2__*) ;} ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

SCI_STATUS scic_sds_phy_consume_power_handler(
   SCIC_SDS_PHY_T *this_phy
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_consume_power_handler(this_phy:0x%08x)\n",
      this_phy
   ));

   return this_phy->state_handlers->consume_power_handler(this_phy);
}
