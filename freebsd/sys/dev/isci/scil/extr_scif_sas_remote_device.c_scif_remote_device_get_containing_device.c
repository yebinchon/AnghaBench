
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ containing_device; } ;
typedef int SCI_STATUS ;
typedef int * SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCI_FAILURE ;
 int SCI_SUCCESS ;

SCI_STATUS scif_remote_device_get_containing_device(
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_REMOTE_DEVICE_HANDLE_T * containing_device
)
{
   SCI_STATUS status = SCI_FAILURE;
   SCIF_SAS_REMOTE_DEVICE_T * this_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                            remote_device;

   if ( (this_device != ((void*)0)) && (containing_device != ((void*)0)) )
   {
      *containing_device = (SCI_REMOTE_DEVICE_HANDLE_T)(this_device->containing_device);
      if (*containing_device != ((void*)0))
      {
         status = SCI_SUCCESS;
      }
   }

   return status;
}
