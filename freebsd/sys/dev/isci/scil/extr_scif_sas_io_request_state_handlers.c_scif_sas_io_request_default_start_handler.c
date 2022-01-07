
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
struct TYPE_7__ {TYPE_2__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_IO_REQUEST_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_io_request_default_start_handler(
   SCI_BASE_REQUEST_T * io_request
)
{
   SCIF_LOG_ERROR((
      sci_base_object_get_logger((SCIF_SAS_IO_REQUEST_T *) io_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "IoRequest:0x%x State:0x%x invalid state to start\n",
      io_request,
      sci_base_state_machine_get_state(
         &((SCIF_SAS_IO_REQUEST_T *) io_request)->parent.parent.state_machine)
   ));

   return SCI_FAILURE_INVALID_STATE;
}
