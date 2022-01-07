
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cam_path {int dummy; } ;
struct ISCI_REMOTE_DEVICE {int frozen_lun_mask; int index; TYPE_2__* domain; } ;
typedef int lun_id_t ;
struct TYPE_4__ {TYPE_1__* controller; } ;
struct TYPE_3__ {int sim; } ;


 int cam_sim_path (int ) ;
 int xpt_create_path (struct cam_path**,int *,int ,int ,int) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_freeze_devq (struct cam_path*,int) ;

void
isci_remote_device_freeze_lun_queue(struct ISCI_REMOTE_DEVICE *remote_device,
    lun_id_t lun)
{
 if (!(remote_device->frozen_lun_mask & (1 << lun))) {
  struct cam_path *path;

  xpt_create_path(&path, ((void*)0),
      cam_sim_path(remote_device->domain->controller->sim),
      remote_device->index, lun);
  xpt_freeze_devq(path, 1);
  xpt_free_path(path);
  remote_device->frozen_lun_mask |= (1 << lun);
 }
}
