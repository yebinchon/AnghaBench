
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* working_request; } ;
struct TYPE_12__ {int parent; TYPE_4__* target_device; TYPE_3__* owning_controller; } ;
struct TYPE_11__ {int parent; } ;
struct TYPE_10__ {int parent; TYPE_2__* state_handlers; } ;
struct TYPE_8__ {int (* continue_io_handler ) (int *,int *,int *) ;} ;
struct TYPE_9__ {TYPE_1__ parent; } ;
typedef TYPE_5__ SCIC_SDS_REQUEST_T ;
typedef TYPE_6__ SCIC_SDS_REMOTE_DEVICE_T ;


 int stub1 (int *,int *,int *) ;

void scic_sds_remote_device_continue_request(
   SCIC_SDS_REMOTE_DEVICE_T * this_device
)
{

   if (this_device->working_request != ((void*)0))
   {
      SCIC_SDS_REQUEST_T * this_request = this_device->working_request;

      this_request->owning_controller->state_handlers->parent.continue_io_handler(
         &this_request->owning_controller->parent,
         &this_request->target_device->parent,
         &this_request->parent
      );
   }
}
