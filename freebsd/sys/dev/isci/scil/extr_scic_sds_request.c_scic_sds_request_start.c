
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ device_sequence; int parent; TYPE_2__* state_handlers; int target_device; } ;
struct TYPE_5__ {int (* start_handler ) (int *) ;} ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_3__ SCIC_SDS_REQUEST_T ;


 int SCI_FAILURE ;
 scalar_t__ scic_sds_remote_device_get_sequence (int ) ;
 int stub1 (int *) ;

SCI_STATUS scic_sds_request_start(
   SCIC_SDS_REQUEST_T *this_request
)
{
   if (
         this_request->device_sequence
      == scic_sds_remote_device_get_sequence(this_request->target_device)
      )
   {
      return this_request->state_handlers->parent.start_handler(
                &this_request->parent
             );
   }

   return SCI_FAILURE;
}
