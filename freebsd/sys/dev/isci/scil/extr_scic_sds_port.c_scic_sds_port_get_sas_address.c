
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_8__ {int ** phy_table; } ;
struct TYPE_7__ {scalar_t__ low; scalar_t__ high; } ;
typedef TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 size_t SCI_MAX_PHYS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int scic_sds_phy_get_sas_address (int *,TYPE_1__*) ;

void scic_sds_port_get_sas_address(
   SCIC_SDS_PORT_T * this_port,
   SCI_SAS_ADDRESS_T * sas_address
)
{
   U32 index;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_get_sas_address(0x%x, 0x%x) enter\n",
      this_port, sas_address
   ));

   sas_address->high = 0;
   sas_address->low = 0;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (this_port->phy_table[index] != ((void*)0))
      {
         scic_sds_phy_get_sas_address(this_port->phy_table[index], sas_address);
      }
   }
}
