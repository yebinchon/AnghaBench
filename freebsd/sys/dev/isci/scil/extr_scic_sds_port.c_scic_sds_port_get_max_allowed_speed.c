
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t U16 ;
struct TYPE_7__ {scalar_t__ max_negotiated_speed; } ;
struct TYPE_6__ {TYPE_2__** phy_table; } ;
typedef scalar_t__ SCI_SAS_LINK_RATE ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 size_t SCI_MAX_PHYS ;
 scalar_t__ SCI_SAS_600_GB ;
 scalar_t__ TRUE ;
 scalar_t__ scic_sds_port_active_phy (TYPE_1__*,TYPE_2__*) ;

SCI_SAS_LINK_RATE scic_sds_port_get_max_allowed_speed(
   SCIC_SDS_PORT_T * this_port
)
{
   U16 index = 0;
   SCI_SAS_LINK_RATE max_allowed_speed = SCI_SAS_600_GB;
   SCIC_SDS_PHY_T * phy = ((void*)0);



   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      phy = this_port->phy_table[index];
      if (
            (phy != ((void*)0))
         && (scic_sds_port_active_phy(this_port, phy) == TRUE)
         && (phy->max_negotiated_speed < max_allowed_speed)
         )
         max_allowed_speed = phy->max_negotiated_speed;
   }

   return max_allowed_speed;
}
