
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef int BOOL ;


 int FALSE ;
 int SMU_IMR_WRITE (int *,int) ;
 int SMU_ISR_COMPLETION ;
 int SMU_ISR_WRITE (int *,int ) ;
 int TRUE ;
 scalar_t__ scic_sds_controller_completion_queue_has_entries (int *) ;

__attribute__((used)) static
BOOL scic_sds_controller_normal_vector_interrupt_handler(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   if (scic_sds_controller_completion_queue_has_entries(this_controller))
   {
      return TRUE;
   }
   else
   {


      SMU_ISR_WRITE(this_controller, SMU_ISR_COMPLETION);





      SMU_IMR_WRITE(this_controller, 0xFF000000);
      SMU_IMR_WRITE(this_controller, 0x00000000);
   }

   return FALSE;
}
