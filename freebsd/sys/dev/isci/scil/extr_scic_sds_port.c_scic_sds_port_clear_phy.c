
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int * port_table; } ;
struct TYPE_12__ {size_t phy_index; } ;
struct TYPE_11__ {TYPE_2__** phy_table; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 int SCI_FAILURE ;
 TYPE_2__* SCI_INVALID_HANDLE ;
 size_t SCI_MAX_PORTS ;
 int SCI_SUCCESS ;
 TYPE_1__* scic_sds_phy_get_port (TYPE_2__*) ;
 int scic_sds_phy_set_port (TYPE_2__*,int *) ;
 TYPE_3__* scic_sds_port_get_controller (TYPE_1__*) ;

SCI_STATUS scic_sds_port_clear_phy(
   SCIC_SDS_PORT_T *port,
   SCIC_SDS_PHY_T *phy
)
{

   if (
           (port->phy_table[phy->phy_index] == phy)
        && (scic_sds_phy_get_port(phy) == port)
      )
   {

      scic_sds_phy_set_port(
         phy,
         &scic_sds_port_get_controller(port)->port_table[SCI_MAX_PORTS]
      );

      port->phy_table[phy->phy_index] = SCI_INVALID_HANDLE;

      return SCI_SUCCESS;
   }

   return SCI_FAILURE;
}
