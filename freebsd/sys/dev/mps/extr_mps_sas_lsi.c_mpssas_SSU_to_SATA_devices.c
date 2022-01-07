
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mpssas_softc* ppriv_ptr1; int path; int target_id; } ;
union ccb {int csio; TYPE_1__ ccb_h; } ;
typedef size_t target_id_t ;
struct mpssas_target {int handle; scalar_t__ stop_at_shutdown; } ;
struct mpssas_softc {int sim; struct mpssas_target* targets; } ;
struct mps_softc {scalar_t__ SSU_refcount; size_t max_devices; int SSU_started; struct mpssas_softc* sassc; } ;
typedef int path_str ;
typedef int path_id_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int FALSE ;
 int MPS_FAULT ;
 int MPS_INFO ;
 int MPS_SENSE_LEN ;
 int MSG_SIMPLE_Q_TAG ;
 int RB_NOSYNC ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int TRUE ;
 int cam_sim_path (int ) ;
 int hz ;
 int mps_dprint (struct mps_softc*,int ,char*,...) ;
 int mpssas_stop_unit_done ;
 int pause (char*,int) ;
 int scsi_start_stop (int *,int ,int ,int ,int ,int ,int ,int ,int) ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int ,int ,size_t,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_path_string (int ,char*,int) ;
 int xpt_path_target_id (int ) ;
 int xpt_periph ;
 int xpt_sim_poll (int ) ;

__attribute__((used)) static void
mpssas_SSU_to_SATA_devices(struct mps_softc *sc, int howto)
{
 struct mpssas_softc *sassc = sc->sassc;
 union ccb *ccb;
 path_id_t pathid = cam_sim_path(sassc->sim);
 target_id_t targetid;
 struct mpssas_target *target;
 char path_str[64];
 int timeout;




 sc->SSU_started = TRUE;
 sc->SSU_refcount = 0;
 for (targetid = 0; targetid < sc->max_devices; targetid++) {
  target = &sassc->targets[targetid];
  if (target->handle == 0x0) {
   continue;
  }

  ccb = xpt_alloc_ccb_nowait();
  if (ccb == ((void*)0)) {
   mps_dprint(sc, MPS_FAULT, "Unable to alloc CCB to stop "
       "unit.\n");
   return;
  }





  if (target->stop_at_shutdown) {
   if (xpt_create_path(&ccb->ccb_h.path,
       xpt_periph, pathid, targetid,
       CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
    mps_dprint(sc, MPS_FAULT, "Unable to create "
        "LUN path to stop unit.\n");
    xpt_free_ccb(ccb);
    return;
   }
   xpt_path_string(ccb->ccb_h.path, path_str,
       sizeof(path_str));

   mps_dprint(sc, MPS_INFO, "Sending StopUnit: path %s "
       "handle %d\n", path_str, target->handle);






   mps_dprint(sc, MPS_INFO, "Incrementing SSU count\n");
   sc->SSU_refcount++;
   ccb->ccb_h.target_id =
       xpt_path_target_id(ccb->ccb_h.path);
   ccb->ccb_h.ppriv_ptr1 = sassc;
   scsi_start_stop(&ccb->csio,
                  0,
       mpssas_stop_unit_done,
       MSG_SIMPLE_Q_TAG,
                FALSE,
                     0,
                    FALSE,
       MPS_SENSE_LEN,
                  10000);
   xpt_action(ccb);
  }
 }





 timeout = 600;
 if (howto & RB_NOSYNC)
  timeout = 100;







 while (sc->SSU_refcount > 0) {
  pause("mpswait", hz/10);
  if (SCHEDULER_STOPPED())
   xpt_sim_poll(sassc->sim);

  if (--timeout == 0) {
   mps_dprint(sc, MPS_FAULT, "Time has expired waiting "
       "for SSU commands to complete.\n");
   break;
  }
 }
}
