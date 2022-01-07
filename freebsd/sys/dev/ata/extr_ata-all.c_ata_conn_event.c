
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ata_channel {int state_mtx; int * sim; } ;
typedef int device_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int ata_reinit (int ) ;
 int cam_sim_path (int *) ;
 struct ata_channel* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
ata_conn_event(void *context, int dummy)
{
 device_t dev = (device_t)context;
 struct ata_channel *ch = device_get_softc(dev);
 union ccb *ccb;

 mtx_lock(&ch->state_mtx);
 if (ch->sim == ((void*)0)) {
  mtx_unlock(&ch->state_mtx);
  return;
 }
 ata_reinit(dev);
 if ((ccb = xpt_alloc_ccb_nowait()) == ((void*)0))
  return;
 if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
     cam_sim_path(ch->sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb);
  return;
 }
 xpt_rescan(ccb);
 mtx_unlock(&ch->state_mtx);
}
