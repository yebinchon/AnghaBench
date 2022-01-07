
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int TRUE ;
 int scic_sds_port_general_link_up_handler (int *,int *,int ,int ) ;

__attribute__((used)) static
void scic_sds_port_ready_operational_substate_link_up_handler(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T *the_phy
)
{
   scic_sds_port_general_link_up_handler(this_port, the_phy, TRUE, TRUE);
}
