
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* viit_registers; void* port_pe_configuration_register; void* port_task_scheduler_registers; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCI_SUCCESS ;

SCI_STATUS scic_sds_port_initialize(
   SCIC_SDS_PORT_T *this_port,
   void *port_task_scheduler_registers,
   void *port_configuration_regsiter,
   void *viit_registers
)
{
   this_port->port_task_scheduler_registers = port_task_scheduler_registers;
   this_port->port_pe_configuration_register = port_configuration_regsiter;
   this_port->viit_registers = viit_registers;

   return SCI_SUCCESS;
}
