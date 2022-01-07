
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_10__ {int ** phy_table; } ;
struct TYPE_8__ {scalar_t__ all; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_2__ SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T ;
typedef TYPE_3__ SCIC_SDS_PORT_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 size_t SCI_MAX_PHYS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scic_sds_phy_get_protocols (int *,TYPE_2__*) ;

__attribute__((used)) static
void scic_sds_port_get_protocols(
   SCIC_SDS_PORT_T * this_port,
   SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T * protocols
)
{
   U8 index;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_get_protocols(0x%x, 0x%x) enter\n",
      this_port, protocols
   ));

   protocols->u.all = 0;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (this_port->phy_table[index] != ((void*)0))
      {
         scic_sds_phy_get_protocols(this_port->phy_table[index], protocols);
      }
   }
}
