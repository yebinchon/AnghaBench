
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct pvscsi_softc {int dev; int sim; } ;
struct pvscsi_ring_msg_dev_status_changed {int const type; int * lun; int target; int bus; } ;
struct pvscsi_ring_msg_desc {int type; } ;


 int CAM_REQ_CMP ;


 int cam_sim_path (int ) ;
 int device_printf (int ,char*,...) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
pvscsi_process_msg(struct pvscsi_softc *sc, struct pvscsi_ring_msg_desc *e)
{
 struct pvscsi_ring_msg_dev_status_changed *desc;

 union ccb *ccb;
 switch (e->type) {
 case 129:
 case 128: {
  desc = (struct pvscsi_ring_msg_dev_status_changed *)e;

  device_printf(sc->dev, "MSG: device %s at scsi%u:%u:%u\n",
      desc->type == 129 ? "addition" : "removal",
      desc->bus, desc->target, desc->lun[1]);

  ccb = xpt_alloc_ccb_nowait();
  if (ccb == ((void*)0)) {
   device_printf(sc->dev,
       "Error allocating CCB for dev change.\n");
   break;
  }

  if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
      cam_sim_path(sc->sim), desc->target, desc->lun[1])
      != CAM_REQ_CMP) {
   device_printf(sc->dev,
       "Error creating path for dev change.\n");
   xpt_free_ccb(ccb);
   break;
  }

  xpt_rescan(ccb);
 } break;
 default:
  device_printf(sc->dev, "Unknown msg type 0x%x\n", e->type);
 };
}
