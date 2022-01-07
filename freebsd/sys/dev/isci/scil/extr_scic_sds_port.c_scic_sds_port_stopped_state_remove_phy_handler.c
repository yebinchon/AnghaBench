
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_PORT_T ;
typedef int SCI_BASE_PHY_T ;
typedef int SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int scic_sds_port_clear_phy (int *,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_stopped_state_remove_phy_handler(
   SCI_BASE_PORT_T *port,
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;
   SCIC_SDS_PHY_T *this_phy = (SCIC_SDS_PHY_T *)phy;

   return scic_sds_port_clear_phy(this_port, this_phy);
}
