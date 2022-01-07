
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_7__ {int parent; } ;
struct TYPE_6__ {TYPE_5__ parent; int starting_substate_machine; int * error_counter; int phy_type; int * sata_timeout_timer; int max_negotiated_speed; int * link_layer_registers; int protocol; int bcn_received_while_port_unassigned; int phy_index; int * owning_port; } ;
typedef int SCIC_SDS_PORT_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int FALSE ;
 int SCIC_SDS_PHY_PROTOCOL_UNKNOWN ;
 int SCIC_SDS_PHY_STARTING_SUBSTATE_INITIAL ;
 int SCI_SAS_NO_LINK_RATE ;
 int memset (int *,int ,int) ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_phy_construct (TYPE_5__*,int ,int ) ;
 int sci_base_state_machine_construct (int *,int *,int ,int ) ;
 int scic_sds_phy_initialize_state_logging (TYPE_1__*) ;
 int scic_sds_phy_initialize_state_recording (TYPE_1__*) ;
 int scic_sds_phy_starting_substates ;
 int scic_sds_phy_state_table ;

void scic_sds_phy_construct(
   SCIC_SDS_PHY_T *this_phy,
   SCIC_SDS_PORT_T *owning_port,
   U8 phy_index
)
{


   sci_base_phy_construct(
      &this_phy->parent,
      sci_base_object_get_logger(owning_port),
      scic_sds_phy_state_table
      );


   this_phy->owning_port = owning_port;
   this_phy->phy_index = phy_index;
   this_phy->bcn_received_while_port_unassigned = FALSE;
   this_phy->protocol = SCIC_SDS_PHY_PROTOCOL_UNKNOWN;
   this_phy->link_layer_registers = ((void*)0);
   this_phy->max_negotiated_speed = SCI_SAS_NO_LINK_RATE;
   this_phy->sata_timeout_timer = ((void*)0);


   memset(&this_phy->phy_type, 0, sizeof(this_phy->phy_type));


   memset(this_phy->error_counter, 0, sizeof(this_phy->error_counter));


   sci_base_state_machine_construct(
      &this_phy->starting_substate_machine,
      &this_phy->parent.parent,
      scic_sds_phy_starting_substates,
      SCIC_SDS_PHY_STARTING_SUBSTATE_INITIAL
      );
}
