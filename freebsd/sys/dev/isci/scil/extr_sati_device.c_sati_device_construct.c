
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_3__ {int capabilities; int ncq_depth; int descriptor_sense_enable; int state; } ;
typedef TYPE_1__ SATI_DEVICE_T ;
typedef scalar_t__ BOOL ;


 int SATI_DEVICE_CAP_IGNORE_FUA ;
 int SATI_DEVICE_CAP_NCQ_REQUESTED_ENABLE ;
 int SATI_DEVICE_STATE_OPERATIONAL ;
 int SCSI_MODE_PAGE_CONTROL_D_SENSE_DISABLE ;
 scalar_t__ TRUE ;

void sati_device_construct(
   SATI_DEVICE_T * device,
   BOOL is_ncq_enabled,
   U8 max_ncq_depth,
   BOOL ignore_fua
)
{
   device->state = SATI_DEVICE_STATE_OPERATIONAL;
   device->capabilities = 0;
   device->descriptor_sense_enable = SCSI_MODE_PAGE_CONTROL_D_SENSE_DISABLE;



   if (is_ncq_enabled == TRUE)
      device->capabilities |= SATI_DEVICE_CAP_NCQ_REQUESTED_ENABLE;

   device->ncq_depth = max_ncq_depth;


   if (ignore_fua == TRUE)
      device->capabilities |= SATI_DEVICE_CAP_IGNORE_FUA;

}
