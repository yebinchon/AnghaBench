
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ISCI_REMOTE_DEVICE {TYPE_2__* domain; void* release_queued_ccb; int queued_ccbs; } ;
typedef scalar_t__ lun_id_t ;
struct TYPE_4__ {TYPE_1__* controller; } ;
struct TYPE_3__ {void* release_queued_ccbs; } ;


 scalar_t__ ISCI_MAX_LUN ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 void* TRUE ;
 int isci_log_message (int,char*,char*,struct ISCI_REMOTE_DEVICE*) ;
 int isci_remote_device_release_lun_queue (struct ISCI_REMOTE_DEVICE*,scalar_t__) ;

void
isci_remote_device_release_device_queue(
    struct ISCI_REMOTE_DEVICE *device)
{
 if (TAILQ_EMPTY(&device->queued_ccbs)) {
  lun_id_t lun;

  for (lun = 0; lun < ISCI_MAX_LUN; lun++)
   isci_remote_device_release_lun_queue(device, lun);
 } else {
  device->release_queued_ccb = TRUE;
  device->domain->controller->release_queued_ccbs = TRUE;

  isci_log_message(1, "ISCI", "schedule %p for release\n",
      device);
 }
}
