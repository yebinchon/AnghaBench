
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U8 ;
typedef scalar_t__ U32 ;
typedef scalar_t__ U16 ;
struct TYPE_3__ {scalar_t__ interrupt_coalesce_timeout; scalar_t__ interrupt_coalesce_number; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ INTERRUPT_COALESCE_NUMBER_MAX ;
 int INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_LOWER_BOUND_NS ;
 int INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_UPPER_BOUND_NS ;
 scalar_t__ INTERRUPT_COALESCE_TIMEOUT_ENCODE_MAX ;
 scalar_t__ INTERRUPT_COALESCE_TIMEOUT_ENCODE_MIN ;
 int INTERRUPT_COALESCE_TIMEOUT_MAX_US ;
 int NUMBER ;
 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 int SCI_SUCCESS ;
 int SMU_ICC_GEN_VAL (int ,scalar_t__) ;
 int SMU_ICC_WRITE (TYPE_1__*,int) ;
 int TIMER ;

SCI_STATUS scic_controller_set_interrupt_coalescence(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 coalesce_number,
   U32 coalesce_timeout
)
{
   SCIC_SDS_CONTROLLER_T * scic_controller = (SCIC_SDS_CONTROLLER_T *)controller;
   U8 timeout_encode = 0;
   U32 min = 0;
   U32 max = 0;


   if (coalesce_number > INTERRUPT_COALESCE_NUMBER_MAX)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;
   if (coalesce_timeout == 0)
      timeout_encode = 0;
   else
   {

      coalesce_timeout = coalesce_timeout * 100;
      min = INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_LOWER_BOUND_NS / 10;
      max = INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_UPPER_BOUND_NS / 10;


      for ( timeout_encode = INTERRUPT_COALESCE_TIMEOUT_ENCODE_MIN;
            timeout_encode <= INTERRUPT_COALESCE_TIMEOUT_ENCODE_MAX;
            timeout_encode++ )
      {
         if (min <= coalesce_timeout && max > coalesce_timeout)
            break;
         else if (coalesce_timeout >= max && coalesce_timeout < min*2
            && coalesce_timeout <= INTERRUPT_COALESCE_TIMEOUT_MAX_US*100)
         {
            if ( (coalesce_timeout-max) < (2*min - coalesce_timeout) )
               break;
            else
            {
               timeout_encode++;
               break;
            }
         }
         else
         {
            max = max*2;
            min = min*2;
         }
      }

      if ( timeout_encode == INTERRUPT_COALESCE_TIMEOUT_ENCODE_MAX+1 )

         return SCI_FAILURE_INVALID_PARAMETER_VALUE;
   }

   SMU_ICC_WRITE(
      scic_controller,
      (SMU_ICC_GEN_VAL(NUMBER, coalesce_number)|
       SMU_ICC_GEN_VAL(TIMER, timeout_encode))
   );

   scic_controller->interrupt_coalesce_number = (U16)coalesce_number;
   scic_controller->interrupt_coalesce_timeout = coalesce_timeout/100;

   return SCI_SUCCESS;
}
