
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* state_handlers; } ;
struct TYPE_8__ {TYPE_3__* owning_port; } ;
struct TYPE_7__ {int (* complete_io_handler ) (TYPE_3__*,TYPE_2__*,int *) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 scalar_t__ SCI_SUCCESS ;
 int scic_sds_remote_device_increment_request_count (TYPE_2__*) ;
 int stub1 (TYPE_3__*,TYPE_2__*,int *) ;

void scic_sds_remote_device_start_request(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   SCIC_SDS_REQUEST_T * the_request,
   SCI_STATUS status
)
{

   if (status == SCI_SUCCESS)
      scic_sds_remote_device_increment_request_count(this_device);
   else
   {
      this_device->owning_port->state_handlers->complete_io_handler(
         this_device->owning_port, this_device, the_request
      );
   }
}
