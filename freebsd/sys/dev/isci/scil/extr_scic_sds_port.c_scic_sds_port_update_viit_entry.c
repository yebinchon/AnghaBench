
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned long physical_port_index; } ;
struct TYPE_7__ {unsigned long high; unsigned long low; } ;
typedef TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;


 unsigned long SCU_VIIT_ENTRY_ID_VIIT ;
 unsigned long SCU_VIIT_ENTRY_LPVIE_SHIFT ;
 unsigned long SCU_VIIT_IPPT_INITIATOR ;
 unsigned long SCU_VIIT_STATUS_ALL_VALID ;
 int initiator_sas_address_hi ;
 int initiator_sas_address_lo ;
 int reserved ;
 int scic_sds_port_get_sas_address (TYPE_2__*,TYPE_1__*) ;
 int scu_port_viit_register_write (TYPE_2__*,int ,unsigned long) ;
 int status ;

void scic_sds_port_update_viit_entry(
   SCIC_SDS_PORT_T *this_port
)
{
   SCI_SAS_ADDRESS_T sas_address;

   scic_sds_port_get_sas_address(this_port, &sas_address);

   scu_port_viit_register_write(
      this_port, initiator_sas_address_hi, sas_address.high);

   scu_port_viit_register_write(
      this_port, initiator_sas_address_lo, sas_address.low);


   scu_port_viit_register_write(
      this_port, reserved, 0);



   scu_port_viit_register_write(
      this_port, status, (
           SCU_VIIT_ENTRY_ID_VIIT
         | SCU_VIIT_IPPT_INITIATOR
         | ((1UL << this_port->physical_port_index) << SCU_VIIT_ENTRY_LPVIE_SHIFT)
         | SCU_VIIT_STATUS_ALL_VALID
         )
   );
}
