
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_CONTROLLER_HANDLE_T ;


 int TRUE ;
 int scic_sgpio_set_functionality (int ,int ) ;
 int scic_sgpio_set_to_hardware_control (int ,int ) ;
 int scic_sgpio_set_vendor_code (int ,int) ;

void scic_sgpio_hardware_initialize(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   scic_sgpio_set_functionality(controller, TRUE);
   scic_sgpio_set_to_hardware_control(controller, TRUE);
   scic_sgpio_set_vendor_code(controller, 0x00);
}
