
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint32_t ;
struct ISCI_REMOTE_DEVICE {size_t index; } ;
struct ISCI_DOMAIN {struct ISCI_REMOTE_DEVICE* da_remote_device; } ;
struct ISCI_CONTROLLER {int remote_device_pool; int ** remote_device; int sim; } ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int CAM_LUN_WILDCARD ;
 int cam_sim_path (int ) ;
 scalar_t__ sci_object_get_association (int ) ;
 int sci_pool_put (int ,struct ISCI_REMOTE_DEVICE*) ;
 int scif_remote_device_destruct (int ) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_create_path (int *,int *,int ,size_t,int ) ;
 int xpt_rescan (union ccb*) ;

void
scif_cb_domain_device_removed(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_REMOTE_DEVICE_HANDLE_T remote_device)
{
 struct ISCI_REMOTE_DEVICE *isci_remote_device =
     (struct ISCI_REMOTE_DEVICE *)sci_object_get_association(remote_device);
 struct ISCI_DOMAIN *isci_domain =
     (struct ISCI_DOMAIN *)sci_object_get_association(domain);
 struct ISCI_CONTROLLER *isci_controller =
     (struct ISCI_CONTROLLER *)sci_object_get_association(controller);
 uint32_t path = cam_sim_path(isci_controller->sim);
 union ccb *ccb = xpt_alloc_ccb_nowait();

 isci_controller->remote_device[isci_remote_device->index] = ((void*)0);

 xpt_create_path(&ccb->ccb_h.path, ((void*)0), path,
     isci_remote_device->index, CAM_LUN_WILDCARD);

 xpt_rescan(ccb);

 scif_remote_device_destruct(remote_device);





 if (isci_remote_device != isci_domain->da_remote_device)
  sci_pool_put(isci_controller->remote_device_pool,
      isci_remote_device);
}
