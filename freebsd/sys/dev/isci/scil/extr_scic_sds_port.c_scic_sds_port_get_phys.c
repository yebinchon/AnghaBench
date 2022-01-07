
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_4__ {int ** phy_table; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 size_t SCI_MAX_PHYS ;
 int sci_base_object_get_logger (TYPE_1__*) ;

U32 scic_sds_port_get_phys(
   SCIC_SDS_PORT_T * this_port
)
{
   U32 index;
   U32 mask;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_get_phys(0x%x) enter\n",
      this_port
   ));

   mask = 0;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (this_port->phy_table[index] != ((void*)0))
      {
         mask |= (1 << index);
      }
   }

   return mask;
}
