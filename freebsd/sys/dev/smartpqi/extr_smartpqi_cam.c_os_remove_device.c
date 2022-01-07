
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct cam_path {int dummy; } ;
struct TYPE_8__ {int sim; scalar_t__ sim_registered; } ;
struct TYPE_9__ {TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_10__ {int lun; int target; } ;
typedef TYPE_3__ pqi_scsi_dev_t ;


 int AC_LOST_DEVICE ;
 scalar_t__ CAM_REQ_CMP ;
 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int cam_sim_path (int ) ;
 int pqisrc_free_device (TYPE_2__*,TYPE_3__*) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_free_path (struct cam_path*) ;

void os_remove_device(pqisrc_softstate_t *softs,
        pqi_scsi_dev_t *device) {
 struct cam_path *tmppath;

 DBG_FUNC("IN\n");

 if(softs->os_specific.sim_registered) {
  if (xpt_create_path(&tmppath, ((void*)0),
   cam_sim_path(softs->os_specific.sim),
   device->target, device->lun) != CAM_REQ_CMP) {
   DBG_ERR("unable to create path for async event");
   return;
  }
  xpt_async(AC_LOST_DEVICE, tmppath, ((void*)0));
  xpt_free_path(tmppath);
  pqisrc_free_device(softs, device);
 }

 DBG_FUNC("OUT\n");

}
