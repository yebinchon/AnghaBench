
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_8__ {int sim; scalar_t__ sim_registered; } ;
struct TYPE_9__ {TYPE_2__ os_specific; } ;
typedef TYPE_3__ pqisrc_softstate_t ;
struct TYPE_10__ {int lun; int target; } ;
typedef TYPE_4__ pqi_scsi_dev_t ;


 scalar_t__ CAM_REQ_CMP ;
 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int cam_sim_path (int ) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

void os_add_device(pqisrc_softstate_t *softs, pqi_scsi_dev_t *device) {
 union ccb *ccb;

 DBG_FUNC("IN\n");

 if(softs->os_specific.sim_registered) {
  if ((ccb = xpt_alloc_ccb_nowait()) == ((void*)0)) {
   DBG_ERR("rescan failed (can't allocate CCB)\n");
   return;
  }

  if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
   cam_sim_path(softs->os_specific.sim),
   device->target, device->lun) != CAM_REQ_CMP) {
   DBG_ERR("rescan failed (can't create path)\n");
   xpt_free_ccb(ccb);
   return;
  }
  xpt_rescan(ccb);
 }

 DBG_FUNC("OUT\n");
}
