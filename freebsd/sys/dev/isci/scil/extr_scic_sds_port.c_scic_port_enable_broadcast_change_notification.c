
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t U8 ;
typedef int U32 ;
struct TYPE_2__ {int ** phy_table; } ;
typedef scalar_t__ SCI_PORT_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 size_t SCI_MAX_PHYS ;
 int SCU_SAS_LLCTL_READ (int *) ;
 int SCU_SAS_LLCTL_WRITE (int *,int ) ;

void scic_port_enable_broadcast_change_notification(
   SCI_PORT_HANDLE_T port
)
{
   SCIC_SDS_PORT_T * this_port = (SCIC_SDS_PORT_T *)port;
   SCIC_SDS_PHY_T * phy;
   U32 register_value;
   U8 index;


   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      phy = this_port->phy_table[index];
      if ( phy != ((void*)0))
      {
         register_value = SCU_SAS_LLCTL_READ(phy);


         SCU_SAS_LLCTL_WRITE(phy, register_value);
      }
   }
}
