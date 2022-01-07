
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int scu_sgpio_peg0_register_write (int *,int ,int ) ;
 int vendor_specific_code ;

void scic_sgpio_set_vendor_code(
   SCI_CONTROLLER_HANDLE_T controller,
   U8 vendor_specific_sequence
)
{
   SCIC_SDS_CONTROLLER_T * core_controller = (SCIC_SDS_CONTROLLER_T *) controller;

   scu_sgpio_peg0_register_write(
      core_controller, vendor_specific_code, vendor_specific_sequence);
}
