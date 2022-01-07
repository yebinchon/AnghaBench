
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;


 scalar_t__ scic_remote_device_get_object_size () ;

U32 scif_remote_device_get_object_size(
   void
)
{
   return ( sizeof(SCIF_SAS_REMOTE_DEVICE_T)
          + scic_remote_device_get_object_size() );
}
