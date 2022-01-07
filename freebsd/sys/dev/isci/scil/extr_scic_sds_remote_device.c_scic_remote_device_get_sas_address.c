
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int high; int low; } ;
struct TYPE_8__ {TYPE_1__ device_address; } ;
struct TYPE_7__ {int high; int low; } ;
typedef TYPE_2__ SCI_SAS_ADDRESS_T ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_3__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_3__*) ;

void scic_remote_device_get_sas_address(
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_SAS_ADDRESS_T * sas_address
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device;
   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)remote_device;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_STP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_SMP_REMOTE_TARGET,
      "scic_remote_device_get_sas_address(0x%x, 0x%x) enter\n",
      remote_device, sas_address
   ));

   sas_address->low = this_device->device_address.low;
   sas_address->high = this_device->device_address.high;
}
