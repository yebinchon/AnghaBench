
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_4__ {size_t remote_node_entries; scalar_t__* device_table; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 scalar_t__ SCI_FAILURE_INVALID_STATE ;
 scalar_t__ SCI_INVALID_HANDLE ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 scalar_t__ scic_remote_device_stop (scalar_t__,int ) ;

SCI_STATUS scic_sds_controller_stop_devices(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 index;
   SCI_STATUS status;
   SCI_STATUS device_status;

   status = SCI_SUCCESS;

   for (index = 0; index < this_controller->remote_node_entries; index++)
   {
      if (this_controller->device_table[index] != SCI_INVALID_HANDLE)
      {

         device_status = scic_remote_device_stop(this_controller->device_table[index], 0);

         if (
                 (device_status != SCI_SUCCESS)
              && (device_status != SCI_FAILURE_INVALID_STATE)
            )
         {
            SCIC_LOG_WARNING((
               sci_base_object_get_logger(this_controller),
               SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_SSP_REMOTE_TARGET,
               "Controller stop operation failed to stop device 0x%x because of status %d.\n",
               this_controller->device_table[index], device_status
            ));
         }
      }
   }

   return status;
}
