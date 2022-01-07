
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_active; } ;
struct TYPE_4__ {TYPE_1__ stp_device; } ;
struct SCIF_SAS_REMOTE_DEVICE {TYPE_2__ protocol_device; } ;
typedef int U8 ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int sci_base_object_get_logger (struct SCIF_SAS_REMOTE_DEVICE*) ;

void scif_sas_stp_remote_device_free_ncq_tag(
   struct SCIF_SAS_REMOTE_DEVICE * fw_device,
   U8 ncq_tag
)
{
   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_IO_REQUEST,
      "RemoteDevice:0x%x NcqTag:0x%x freeing NCQ TAG\n",
      fw_device, ncq_tag
   ));

   fw_device->protocol_device.stp_device.s_active &= ~(1 << ncq_tag);
}
