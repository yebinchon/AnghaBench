
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef int BOOL ;


 int SMU_ISR_READ (int *) ;
 int scic_sds_controller_standard_interrupt_handler (int *,int ) ;

__attribute__((used)) static
BOOL scic_sds_controller_legacy_interrupt_handler(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   U32 interrupt_status;
   BOOL is_completion_needed;
   SCIC_SDS_CONTROLLER_T *this_controller = (SCIC_SDS_CONTROLLER_T*)controller;

   interrupt_status = SMU_ISR_READ(this_controller);
   is_completion_needed = scic_sds_controller_standard_interrupt_handler(
                             this_controller, interrupt_status
                          );

   return is_completion_needed;
}
