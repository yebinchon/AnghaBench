
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_get_state (int *) ;

SCI_STATUS scic_sds_request_default_destruct_handler(
   SCI_BASE_REQUEST_T *request
)
{
   SCIC_LOG_WARNING((
      sci_base_object_get_logger((SCIC_SDS_REQUEST_T *)request),
      (
          SCIC_LOG_OBJECT_SSP_IO_REQUEST
        | SCIC_LOG_OBJECT_STP_IO_REQUEST
        | SCIC_LOG_OBJECT_SMP_IO_REQUEST
      ),
      "SCIC IO Request requested to destroy while in wrong state %d\n",
      sci_base_state_machine_get_state(
         &((SCIC_SDS_REQUEST_T *)request)->parent.state_machine)
   ));

   return SCI_FAILURE_INVALID_STATE;
}
