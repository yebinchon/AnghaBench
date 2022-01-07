
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int owning_port; } ;
typedef int SCI_PORT_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SCIC_SDS_DUMMY_PORT ;
 int SCI_INVALID_HANDLE ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 scalar_t__ scic_sds_port_get_index (int ) ;

SCI_PORT_HANDLE_T scic_sds_phy_get_port(
   SCIC_SDS_PHY_T *this_phy
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_phy_get_port(0x%x) enter\n",
      this_phy
   ));

   if (scic_sds_port_get_index(this_phy->owning_port) == SCIC_SDS_DUMMY_PORT)
      return SCI_INVALID_HANDLE;

   return this_phy->owning_port;
}
