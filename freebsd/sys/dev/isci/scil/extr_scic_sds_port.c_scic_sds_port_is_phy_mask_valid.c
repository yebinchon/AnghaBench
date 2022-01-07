
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int physical_port_index; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL scic_sds_port_is_phy_mask_valid(
   SCIC_SDS_PORT_T *this_port,
   U32 phy_mask
)
{
   if (this_port->physical_port_index == 0)
   {
      if ( ((phy_mask & 0x0F) == 0x0F)
         || ((phy_mask & 0x03) == 0x03)
         || ((phy_mask & 0x01) == 0x01)
         || (phy_mask == 0) )
         return TRUE;
   }
   else if (this_port->physical_port_index == 1)
   {
      if ( ((phy_mask & 0x02) == 0x02)
         || (phy_mask == 0) )
         return TRUE;
   }
   else if (this_port->physical_port_index == 2)
   {
      if ( ((phy_mask & 0x0C) == 0x0C)
         || ((phy_mask & 0x04) == 0x04)
         || (phy_mask == 0) )
         return TRUE;
   }
   else if (this_port->physical_port_index == 3)
   {
      if ( ((phy_mask & 0x08) == 0x08)
         || (phy_mask == 0) )
         return TRUE;
   }

   return FALSE;
}
