
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {scalar_t__ current_state_id; } ;
struct TYPE_12__ {TYPE_10__ state_machine; } ;
struct TYPE_14__ {scalar_t__ active_phy_mask; TYPE_1__ parent; } ;
struct TYPE_13__ {scalar_t__ high; scalar_t__ low; } ;
typedef TYPE_2__ SCI_SAS_ADDRESS_T ;
typedef TYPE_3__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;
typedef int BOOL ;


 int SCI_BASE_PORT_STATE_READY ;
 scalar_t__ SCI_BASE_PORT_STATE_RESETTING ;
 int sci_base_state_machine_change_state (TYPE_10__*,int ) ;
 int scic_sds_phy_get_attached_sas_address (int *,TYPE_2__*) ;
 int scic_sds_port_activate_phy (TYPE_3__*,int *,int ,int ) ;
 int scic_sds_port_get_attached_sas_address (TYPE_3__*,TYPE_2__*) ;
 int scic_sds_port_invalid_link_up (TYPE_3__*,int *) ;

void scic_sds_port_general_link_up_handler(
   SCIC_SDS_PORT_T * this_port,
   SCIC_SDS_PHY_T * the_phy,
   BOOL do_notify_user,
   BOOL do_resume_phy
)
{
   SCI_SAS_ADDRESS_T port_sas_address;
   SCI_SAS_ADDRESS_T phy_sas_address;

   scic_sds_port_get_attached_sas_address(this_port, &port_sas_address);
   scic_sds_phy_get_attached_sas_address(the_phy, &phy_sas_address);





   if (
         (
            (phy_sas_address.high == port_sas_address.high)
         && (phy_sas_address.low == port_sas_address.low )
         )
         || (this_port->active_phy_mask == 0)
      )
   {
      scic_sds_port_activate_phy(this_port, the_phy, do_notify_user, do_resume_phy);

      if (this_port->parent.state_machine.current_state_id
          == SCI_BASE_PORT_STATE_RESETTING)
      {
         sci_base_state_machine_change_state(
            &this_port->parent.state_machine, SCI_BASE_PORT_STATE_READY
         );
      }
   }
   else
   {
      scic_sds_port_invalid_link_up(this_port, the_phy);
   }
}
