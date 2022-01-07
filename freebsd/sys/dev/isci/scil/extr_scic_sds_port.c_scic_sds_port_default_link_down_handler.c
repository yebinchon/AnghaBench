
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_WARNING (int ) ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_get_state (int ) ;
 int scic_sds_port_get_base_state_machine (int *) ;

void scic_sds_port_default_link_down_handler(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T *phy
)
{
   SCIC_LOG_WARNING((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "SCIC Port 0x%08x received link down notification from phy 0x%08x while in invalid state %d\n",
      this_port, phy,
      sci_base_state_machine_get_state(
         scic_sds_port_get_base_state_machine(this_port))
   ));
}
