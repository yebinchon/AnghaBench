
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef int BOOL ;


 int FALSE ;
 int SMU_IMR_WRITE (int *,int) ;
 int SMU_ISR_QUEUE_ERROR ;
 int SMU_ISR_QUEUE_SUSPEND ;
 int SMU_ISR_READ (int *) ;
 int TRUE ;

__attribute__((used)) static
BOOL scic_sds_controller_error_vector_interrupt_handler(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   U32 interrupt_status;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;


   interrupt_status = SMU_ISR_READ(this_controller);
   interrupt_status &= (SMU_ISR_QUEUE_ERROR | SMU_ISR_QUEUE_SUSPEND);

   if (interrupt_status != 0)
   {


      return TRUE;
   }






   SMU_IMR_WRITE(this_controller, 0x000000FF);
   SMU_IMR_WRITE(this_controller, 0x00000000);

   return FALSE;
}
