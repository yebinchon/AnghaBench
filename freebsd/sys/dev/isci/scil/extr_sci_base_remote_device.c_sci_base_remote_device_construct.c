
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_machine; int parent; } ;
typedef int SCI_BASE_STATE_T ;
typedef TYPE_1__ SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_LOGGER_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_INITIAL ;
 int sci_base_object_construct (int *,int *) ;
 int sci_base_state_machine_construct (int *,int *,int *,int ) ;
 int sci_base_state_machine_start (int *) ;

void sci_base_remote_device_construct(
   SCI_BASE_REMOTE_DEVICE_T *this_device,
   SCI_BASE_LOGGER_T *logger,
   SCI_BASE_STATE_T *state_table
)
{
   sci_base_object_construct(
      &this_device->parent,
      logger
   );

   sci_base_state_machine_construct(
      &this_device->state_machine,
      &this_device->parent,
      state_table,
      SCI_BASE_REMOTE_DEVICE_STATE_INITIAL
   );

   sci_base_state_machine_start(
      &this_device->state_machine
   );
}
