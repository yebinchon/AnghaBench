
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ core_object; } ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_WARNING (int ) ;
 scalar_t__ SCI_INVALID_HANDLE ;
 int sci_base_object_get_logger (TYPE_1__*) ;

SCI_REMOTE_DEVICE_HANDLE_T scif_remote_device_get_scic_handle(
   SCI_REMOTE_DEVICE_HANDLE_T scif_remote_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                          scif_remote_device;

   if ( (fw_device == ((void*)0)) || (fw_device->core_object == SCI_INVALID_HANDLE) )
      return SCI_INVALID_HANDLE;

   SCIF_LOG_WARNING((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "RemoteDevice:0x%x no associated core device found\n",
      fw_device
   ));

   return fw_device->core_object;
}
