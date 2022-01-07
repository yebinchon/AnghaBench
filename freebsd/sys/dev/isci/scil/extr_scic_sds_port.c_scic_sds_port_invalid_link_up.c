
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int invalid_phy_mask; } ;
struct TYPE_9__ {int phy_index; } ;
typedef int SCIC_SDS_PORT_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int scic_cb_port_invalid_link_up (TYPE_2__*,int *,TYPE_1__*) ;
 int scic_sds_controller_set_invalid_phy (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* scic_sds_port_get_controller (int *) ;

void scic_sds_port_invalid_link_up(
   SCIC_SDS_PORT_T * this_port,
   SCIC_SDS_PHY_T * the_phy
)
{
   SCIC_SDS_CONTROLLER_T * controller = scic_sds_port_get_controller(this_port);



   if ((controller->invalid_phy_mask & (1 << the_phy->phy_index)) == 0)
   {
      scic_sds_controller_set_invalid_phy(controller, the_phy);

      scic_cb_port_invalid_link_up(controller, this_port, the_phy);
   }
}
