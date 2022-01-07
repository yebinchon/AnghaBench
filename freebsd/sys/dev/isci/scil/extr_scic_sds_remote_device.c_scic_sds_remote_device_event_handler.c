
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int (* event_handler ) (TYPE_2__*,int ) ;} ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 int stub1 (TYPE_2__*,int ) ;

SCI_STATUS scic_sds_remote_device_event_handler(
   SCIC_SDS_REMOTE_DEVICE_T *this_device,
   U32 event_code
)
{
   return this_device->state_handlers->event_handler(this_device, event_code);
}
