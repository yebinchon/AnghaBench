
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 int FALSE ;
 int scic_sds_remote_device_core_event_handler (int *,int ,int ) ;

SCI_STATUS scic_sds_remote_device_default_event_handler(
   SCIC_SDS_REMOTE_DEVICE_T *this_device,
   U32 event_code
)
{
   return scic_sds_remote_device_core_event_handler( this_device,
                                                     event_code,
                                                     FALSE );
}
