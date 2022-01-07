
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* owning_port; } ;
struct TYPE_5__ {int owning_controller; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 int scic_sds_terminate_reqests (int ,TYPE_2__*,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_device_terminate_requests(
   SCIC_SDS_REMOTE_DEVICE_T *this_device
)
{
    return scic_sds_terminate_reqests(
            this_device->owning_port->owning_controller,
            this_device,
            ((void*)0));
}
