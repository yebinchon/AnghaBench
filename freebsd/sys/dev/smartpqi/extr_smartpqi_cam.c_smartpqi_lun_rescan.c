
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {int cbfcnp; int func_code; } ;
union ccb {TYPE_2__ crcn; TYPE_3__ ccb_h; } ;
struct TYPE_4__ {int sim; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
struct cam_path {int dummy; } ;
typedef scalar_t__ cam_status ;


 int CAM_FLAG_NONE ;
 scalar_t__ CAM_REQ_CMP ;
 int DBG_ERR (char*,scalar_t__) ;
 int DBG_FUNC (char*) ;
 int XPT_SCAN_LUN ;
 int bzero (union ccb*,int) ;
 int cam_sim_path (int ) ;
 int smartpqi_lunrescan_cb ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int,int) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_setup_ccb (TYPE_3__*,struct cam_path*,int) ;

__attribute__((used)) static void smartpqi_lun_rescan(struct pqisrc_softstate *softs, int target,
   int lun)
{
 union ccb *ccb = ((void*)0);
 cam_status status = 0;
 struct cam_path *path = ((void*)0);

 DBG_FUNC("IN\n");

 ccb = xpt_alloc_ccb_nowait();
 status = xpt_create_path(&path, ((void*)0),
    cam_sim_path(softs->os_specific.sim), target, lun);
 if (status != CAM_REQ_CMP) {
  DBG_ERR("xpt_create_path status(%d) != CAM_REQ_CMP \n",
     status);
  xpt_free_ccb(ccb);
  return;
 }

 bzero(ccb, sizeof(union ccb));
 xpt_setup_ccb(&ccb->ccb_h, path, 5);
 ccb->ccb_h.func_code = XPT_SCAN_LUN;
 ccb->ccb_h.cbfcnp = smartpqi_lunrescan_cb;
 ccb->crcn.flags = CAM_FLAG_NONE;

 xpt_action(ccb);

 DBG_FUNC("OUT\n");
}
