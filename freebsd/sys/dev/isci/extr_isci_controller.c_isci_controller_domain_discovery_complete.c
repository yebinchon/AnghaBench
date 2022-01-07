
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef size_t uint8_t ;
struct isci_softc {size_t controller_count; int config_hook; int * controllers; } ;
struct ISCI_DOMAIN {int index; } ;
struct ISCI_CONTROLLER {int initial_discovery_mask; size_t index; int sim; scalar_t__ has_been_scanned; struct isci_softc* isci; } ;


 int CAM_LUN_WILDCARD ;
 int CAM_TARGET_WILDCARD ;
 scalar_t__ TRUE ;
 int cam_sim_path (int ) ;
 int config_intrhook_disestablish (int *) ;
 int isci_controller_start (int *) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_release_simq (int ,scalar_t__) ;
 int xpt_rescan (union ccb*) ;

void isci_controller_domain_discovery_complete(
    struct ISCI_CONTROLLER *isci_controller, struct ISCI_DOMAIN *isci_domain)
{
 if (!isci_controller->has_been_scanned)
 {







  isci_controller->initial_discovery_mask &=
      ~(1 << isci_domain->index);

  if (isci_controller->initial_discovery_mask == 0) {
   struct isci_softc *driver = isci_controller->isci;
   uint8_t next_index = isci_controller->index + 1;

   isci_controller->has_been_scanned = TRUE;


   xpt_release_simq(isci_controller->sim, TRUE);







   union ccb *ccb = xpt_alloc_ccb_nowait();

   xpt_create_path(&ccb->ccb_h.path, ((void*)0),
       cam_sim_path(isci_controller->sim),
       CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);

   xpt_rescan(ccb);


   if (next_index < driver->controller_count) {



    isci_controller_start(
        &driver->controllers[next_index]);
   }
   else
   {





    config_intrhook_disestablish(
        &driver->config_hook);
   }
  }
 }
}
