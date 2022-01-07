
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef scalar_t__ BOOL ;


 int DISABLE_SGPIO_FUNCTIONALITY ;
 int ENABLE_SGPIO_FUNCTIONALITY ;
 int interface_control ;
 int scu_sgpio_peg0_register_write (int *,int ,int ) ;

void scic_sgpio_set_functionality(
   SCI_CONTROLLER_HANDLE_T controller,
   BOOL sgpio_mode
)
{
   U32 value = DISABLE_SGPIO_FUNCTIONALITY;
   SCIC_SDS_CONTROLLER_T * core_controller = (SCIC_SDS_CONTROLLER_T *) controller;

   if(sgpio_mode)
   {
      value = ENABLE_SGPIO_FUNCTIONALITY;
   }

   scu_sgpio_peg0_register_write(
      core_controller, interface_control, value);
}
