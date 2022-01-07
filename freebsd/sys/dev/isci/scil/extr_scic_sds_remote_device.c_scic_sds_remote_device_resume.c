
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int (* resume_handler ) (TYPE_2__*) ;} ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 int stub1 (TYPE_2__*) ;

SCI_STATUS scic_sds_remote_device_resume(
   SCIC_SDS_REMOTE_DEVICE_T *this_device
)
{
   return this_device->state_handlers->resume_handler(this_device);
}
