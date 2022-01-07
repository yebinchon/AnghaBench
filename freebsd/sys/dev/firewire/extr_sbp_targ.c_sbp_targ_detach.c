
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xferlist; } ;
struct TYPE_3__ {int fc; int * post_busreset; } ;
struct sbp_targ_softc {int mtx; TYPE_2__ fwb; TYPE_1__ fd; struct sbp_targ_lstate* black_hole; struct sbp_targ_lstate** lstate; int sim; int path; } ;
struct sbp_targ_lstate {int path; } ;
typedef int device_t ;


 int MAX_LUN ;
 int M_SBP_TARG ;
 int SBP_LOCK (struct sbp_targ_softc*) ;
 int SBP_UNLOCK (struct sbp_targ_softc*) ;
 int TRUE ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int free (struct sbp_targ_lstate*,int ) ;
 int fw_bindremove (int ,TYPE_2__*) ;
 int fw_xferlist_remove (int *) ;
 int mtx_destroy (int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
sbp_targ_detach(device_t dev)
{
 struct sbp_targ_softc *sc;
 struct sbp_targ_lstate *lstate;
 int i;

 sc = (struct sbp_targ_softc *)device_get_softc(dev);
 sc->fd.post_busreset = ((void*)0);

 SBP_LOCK(sc);
 xpt_free_path(sc->path);
 xpt_bus_deregister(cam_sim_path(sc->sim));
 cam_sim_free(sc->sim, TRUE);
 SBP_UNLOCK(sc);

 for (i = 0; i < MAX_LUN; i++) {
  lstate = sc->lstate[i];
  if (lstate != ((void*)0)) {
   xpt_free_path(lstate->path);
   free(lstate, M_SBP_TARG);
  }
 }
 if (sc->black_hole != ((void*)0)) {
  xpt_free_path(sc->black_hole->path);
  free(sc->black_hole, M_SBP_TARG);
 }

 fw_bindremove(sc->fd.fc, &sc->fwb);
 fw_xferlist_remove(&sc->fwb.xferlist);

 mtx_destroy(&sc->mtx);

 return 0;
}
