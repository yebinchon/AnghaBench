
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCU_LINK_LAYER_REGISTERS_T ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_BASE_PHY_STATE_STOPPED ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_phy_get_base_state_machine (int *) ;
 int scic_sds_phy_link_layer_initialization (int *,int *) ;
 int scic_sds_phy_transport_layer_initialization (int *,void*) ;

SCI_STATUS scic_sds_phy_initialize(
   SCIC_SDS_PHY_T *this_phy,
   void *transport_layer_registers,
   SCU_LINK_LAYER_REGISTERS_T *link_layer_registers
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_initialize(this_phy:0x%x, link_layer_registers:0x%x)\n",
      this_phy, link_layer_registers
   ));


   scic_sds_phy_transport_layer_initialization(this_phy, transport_layer_registers);


   scic_sds_phy_link_layer_initialization(this_phy, link_layer_registers);



   sci_base_state_machine_change_state(
      scic_sds_phy_get_base_state_machine(this_phy),
      SCI_BASE_PHY_STATE_STOPPED
   );

   return SCI_SUCCESS;
}
