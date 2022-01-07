
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_INITIALIZING ;
 int scic_sds_controller_set_base_state_handlers (int *,int ) ;

__attribute__((used)) static
void scic_sds_controller_initializing_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   scic_sds_controller_set_base_state_handlers(
      this_controller, SCI_BASE_CONTROLLER_STATE_INITIALIZING);
}
