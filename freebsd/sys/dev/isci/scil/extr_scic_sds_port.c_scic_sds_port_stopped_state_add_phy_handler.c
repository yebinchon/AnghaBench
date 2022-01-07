
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ high; scalar_t__ low; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef int SCI_BASE_PORT_T ;
typedef int SCI_BASE_PHY_T ;
typedef int SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION ;
 int scic_sds_phy_get_sas_address (int *,TYPE_1__*) ;
 int scic_sds_port_get_sas_address (int *,TYPE_1__*) ;
 int scic_sds_port_set_phy (int *,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_stopped_state_add_phy_handler(
   SCI_BASE_PORT_T *port,
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PORT_T * this_port = (SCIC_SDS_PORT_T *)port;
   SCIC_SDS_PHY_T * this_phy = (SCIC_SDS_PHY_T *)phy;
   SCI_SAS_ADDRESS_T port_sas_address;


   scic_sds_port_get_sas_address(this_port, &port_sas_address);

   if (port_sas_address.high != 0 && port_sas_address.low != 0)
   {
      SCI_SAS_ADDRESS_T phy_sas_address;



      scic_sds_phy_get_sas_address(this_phy, &phy_sas_address);

      if (
            (port_sas_address.high != phy_sas_address.high)
         || (port_sas_address.low != phy_sas_address.low)
         )
      {
         return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
      }
   }

   return scic_sds_port_set_phy(this_port, this_phy);
}
