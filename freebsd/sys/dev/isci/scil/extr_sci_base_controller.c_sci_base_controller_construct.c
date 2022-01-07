
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int state_machine; int mdl; int parent; } ;
typedef int SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef int SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T ;
typedef int SCI_BASE_STATE_T ;
typedef int SCI_BASE_OBJECT_T ;
typedef int SCI_BASE_LOGGER_T ;
typedef TYPE_1__ SCI_BASE_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_INITIAL ;
 int sci_base_mdl_construct (int *,int *,int ,int ) ;
 int sci_base_object_construct (int *,int *) ;
 int sci_base_state_machine_construct (int *,int *,int *,int ) ;
 int sci_base_state_machine_start (int *) ;

void sci_base_controller_construct(
   SCI_BASE_CONTROLLER_T * this_controller,
   SCI_BASE_LOGGER_T * logger,
   SCI_BASE_STATE_T * state_table,
   SCI_PHYSICAL_MEMORY_DESCRIPTOR_T * mdes,
   U32 mde_count,
   SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T next_mdl
)
{
   sci_base_object_construct((SCI_BASE_OBJECT_T *)this_controller, logger);

   sci_base_state_machine_construct(
      &this_controller->state_machine,
      &this_controller->parent,
      state_table,
      SCI_BASE_CONTROLLER_STATE_INITIAL
   );

   sci_base_mdl_construct(&this_controller->mdl, mdes, mde_count, next_mdl);

   sci_base_state_machine_start(&this_controller->state_machine);
}
