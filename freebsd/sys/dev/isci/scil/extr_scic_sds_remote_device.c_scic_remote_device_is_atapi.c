
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_atapi; } ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef int BOOL ;



BOOL scic_remote_device_is_atapi(
   SCI_REMOTE_DEVICE_HANDLE_T device_handle
)
{
  return ((SCIC_SDS_REMOTE_DEVICE_T *)device_handle)->is_atapi;
}
