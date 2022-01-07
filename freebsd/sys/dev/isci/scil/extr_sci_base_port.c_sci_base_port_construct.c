
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_machine; int parent; } ;
typedef int SCI_BASE_STATE_T ;
typedef TYPE_1__ SCI_BASE_PORT_T ;
typedef int SCI_BASE_LOGGER_T ;


 int SCI_BASE_PORT_STATE_STOPPED ;
 int sci_base_object_construct (int *,int *) ;
 int sci_base_state_machine_construct (int *,int *,int *,int ) ;
 int sci_base_state_machine_start (int *) ;

void sci_base_port_construct(
   SCI_BASE_PORT_T *this_port,
   SCI_BASE_LOGGER_T *logger,
   SCI_BASE_STATE_T *state_table
)
{
   sci_base_object_construct(&this_port->parent, logger);

   sci_base_state_machine_construct(
      &this_port->state_machine,
      &this_port->parent,
      state_table,
      SCI_BASE_PORT_STATE_STOPPED
   );

   sci_base_state_machine_start(
      &this_port->state_machine
   );
}
