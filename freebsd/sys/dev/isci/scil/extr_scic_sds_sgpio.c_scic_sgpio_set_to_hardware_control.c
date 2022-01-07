
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U8 ;
typedef int U32 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef scalar_t__ BOOL ;


 size_t SCI_MAX_PHYS ;
 int SGPIO_HARDWARE_CONTROL ;
 int SGPIO_SOFTWARE_CONTROL ;
 int * output_data_select ;
 int scu_sgpio_peg0_register_write (int *,int ,int ) ;

void scic_sgpio_set_to_hardware_control(
   SCI_CONTROLLER_HANDLE_T controller,
   BOOL is_hardware_controlled
)
{
   SCIC_SDS_CONTROLLER_T * core_controller = (SCIC_SDS_CONTROLLER_T *) controller;
   U8 i;
   U32 output_value;


   if(is_hardware_controlled)
   {
      output_value = SGPIO_HARDWARE_CONTROL;
   }
   else
   {
      output_value = SGPIO_SOFTWARE_CONTROL;
   }

   for(i = 0; i < SCI_MAX_PHYS; i++)
   {
      scu_sgpio_peg0_register_write(
         core_controller, output_data_select[i], output_value);
   }
}
