
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_4__ {int ** phy_table; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 size_t SCI_MAX_PHYS ;
 scalar_t__ scic_sds_port_active_phy (TYPE_1__*,int *) ;

SCIC_SDS_PHY_T * scic_sds_port_get_a_connected_phy(
   SCIC_SDS_PORT_T *this_port
)
{
   U32 index;
   SCIC_SDS_PHY_T *phy;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {


      phy = this_port->phy_table[index];
      if (
            (phy != ((void*)0))
         && scic_sds_port_active_phy(this_port, phy)
         )
      {
         return phy;
      }
   }

   return ((void*)0);
}
