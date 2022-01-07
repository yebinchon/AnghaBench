
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t phy_index; } ;
struct TYPE_9__ {scalar_t__* phy_table; int physical_port_index; int logical_port_index; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 int SCI_FAILURE ;
 scalar_t__ SCI_INVALID_HANDLE ;
 int SCI_SUCCESS ;
 scalar_t__ scic_sds_phy_get_port (TYPE_2__*) ;
 int scic_sds_phy_set_port (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ scic_sds_port_is_valid_phy_assignment (TYPE_1__*,size_t) ;

SCI_STATUS scic_sds_port_set_phy(
   SCIC_SDS_PORT_T *port,
   SCIC_SDS_PHY_T *phy
)
{



   if (
         (port->phy_table[phy->phy_index] == SCI_INVALID_HANDLE)
      && (scic_sds_phy_get_port(phy) == SCI_INVALID_HANDLE)
      && scic_sds_port_is_valid_phy_assignment(port, phy->phy_index)
      )
   {


      port->logical_port_index = port->physical_port_index;
      port->phy_table[phy->phy_index] = phy;
      scic_sds_phy_set_port(phy, port);

      return SCI_SUCCESS;
   }

   return SCI_FAILURE;
}
