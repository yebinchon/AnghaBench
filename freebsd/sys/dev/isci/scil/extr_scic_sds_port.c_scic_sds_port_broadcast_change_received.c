
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int owning_controller; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int scic_cb_port_bc_change_primitive_recieved (int ,TYPE_1__*,int *) ;

void scic_sds_port_broadcast_change_received(
   SCIC_SDS_PORT_T * this_port,
   SCIC_SDS_PHY_T * this_phy
)
{

   scic_cb_port_bc_change_primitive_recieved(
      this_port->owning_controller, this_port, this_phy
   );
}
