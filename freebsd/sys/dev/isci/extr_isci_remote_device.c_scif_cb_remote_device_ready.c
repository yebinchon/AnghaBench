
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef size_t uint32_t ;
struct ISCI_REMOTE_DEVICE {size_t index; } ;
struct ISCI_CONTROLLER {int sim; scalar_t__ has_been_scanned; struct ISCI_REMOTE_DEVICE** remote_device; } ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int CAM_LUN_WILDCARD ;
 int cam_sim_path (int ) ;
 int isci_remote_device_release_device_queue (struct ISCI_REMOTE_DEVICE*) ;
 void* sci_object_get_association (int ) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_create_path (int *,int *,int ,size_t,int ) ;
 int xpt_rescan (union ccb*) ;

void
scif_cb_remote_device_ready(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_REMOTE_DEVICE_HANDLE_T remote_device)
{
 struct ISCI_REMOTE_DEVICE *isci_remote_device =
     sci_object_get_association(remote_device);
 struct ISCI_CONTROLLER *isci_controller =
     sci_object_get_association(controller);
 uint32_t device_index = isci_remote_device->index;

 if (isci_controller->remote_device[device_index] == ((void*)0)) {



  isci_controller->remote_device[device_index] =
      isci_remote_device;

  if (isci_controller->has_been_scanned) {






   union ccb *ccb = xpt_alloc_ccb_nowait();

   xpt_create_path(&ccb->ccb_h.path, ((void*)0),
       cam_sim_path(isci_controller->sim),
       isci_remote_device->index, CAM_LUN_WILDCARD);

   xpt_rescan(ccb);
  }
 }

 isci_remote_device_release_device_queue(isci_remote_device);
}
