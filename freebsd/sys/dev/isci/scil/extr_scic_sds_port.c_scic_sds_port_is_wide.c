
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_3__ {int ** phy_table; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int BOOL ;


 size_t SCI_MAX_PHYS ;

__attribute__((used)) static
BOOL scic_sds_port_is_wide(
   SCIC_SDS_PORT_T *this_port
)
{
   U32 index;
   U32 phy_count = 0;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (this_port->phy_table[index] != ((void*)0))
      {
         phy_count++;
      }
   }

   return (phy_count != 1);
}
