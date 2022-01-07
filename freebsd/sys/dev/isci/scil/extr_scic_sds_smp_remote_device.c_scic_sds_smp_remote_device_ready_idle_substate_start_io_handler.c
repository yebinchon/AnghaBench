
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* state_handlers; } ;
struct TYPE_7__ {int ready_substate_machine; int * working_request; int rnc; TYPE_3__* owning_port; } ;
struct TYPE_6__ {scalar_t__ (* start_io_handler ) (TYPE_3__*,TYPE_2__*,int *) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_CMD ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_remote_device_start_request (TYPE_2__*,int *,scalar_t__) ;
 scalar_t__ scic_sds_remote_node_context_start_io (int ,int *) ;
 scalar_t__ scic_sds_request_start (int *) ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_2__*,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_smp_remote_device_ready_idle_substate_start_io_handler(
   SCI_BASE_REMOTE_DEVICE_T * device,
   SCI_BASE_REQUEST_T * request
)
{
   SCI_STATUS status;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCIC_SDS_REQUEST_T * io_request = (SCIC_SDS_REQUEST_T *)request;


   status = this_device->owning_port->state_handlers->start_io_handler(
      this_device->owning_port,
      this_device,
      io_request
   );

   if (status == SCI_SUCCESS)
   {
      status =
         scic_sds_remote_node_context_start_io(this_device->rnc, io_request);

      if (status == SCI_SUCCESS)
      {
         status = scic_sds_request_start(io_request);
      }

      if (status == SCI_SUCCESS)
      {
         this_device->working_request = io_request;

         sci_base_state_machine_change_state(
               &this_device->ready_substate_machine,
               SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_CMD
         );
      }

      scic_sds_remote_device_start_request(this_device, io_request, status);
   }

   return status;
}
