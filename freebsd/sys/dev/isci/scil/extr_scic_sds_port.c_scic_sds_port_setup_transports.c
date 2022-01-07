
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_3__ {int active_phy_mask; int * phy_table; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCI_MAX_PHYS ;
 int scic_sds_phy_setup_transport (int ,int ) ;

void scic_sds_port_setup_transports(
   SCIC_SDS_PORT_T * this_port,
   U32 device_id
)
{
   U8 index;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (this_port->active_phy_mask & (1 << index))
      {
         scic_sds_phy_setup_transport(this_port->phy_table[index], device_id);
      }
   }
}
