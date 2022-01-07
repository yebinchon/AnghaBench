
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection_rate; } ;
typedef int SCI_STATUS ;
typedef int SCI_SAS_LINK_RATE ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_1__*) ;

SCI_STATUS scic_remote_device_set_max_connection_rate(
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_SAS_LINK_RATE connection_rate
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device;
   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)remote_device;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_STP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_SMP_REMOTE_TARGET,
      "scic_remote_device_set_max_connection_rate(0x%x, 0x%x) enter\n",
      remote_device, connection_rate
   ));

   this_device->connection_rate = connection_rate;

   return SCI_SUCCESS;
}
