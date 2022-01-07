
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ model; } ;
struct psm_softc {int config; int unit; int flags; TYPE_1__ hw; int kbdc; } ;
struct TYPE_6__ {int resolution; int rate; } ;
typedef TYPE_2__ mousemode_t ;
struct TYPE_7__ {scalar_t__ model; int (* probefunc ) (struct psm_softc*,int ) ;} ;
typedef int KBDC ;


 int FALSE ;
 int LOG_DEBUG ;
 int LOG_ERR ;

 int PSM_CONFIG_IGNPORTERROR ;
 int PSM_CONFIG_NORESET ;
 int PSM_NEED_SYNCBITS ;
 int REINIT ;
 int TRUE ;
 int disable_aux_dev (int ) ;
 int empty_both_buffers (int ,int) ;
 int enable_aux_dev (int ) ;
 int get_mouse_status (int ,int*,int ,int) ;
 int log (int ,char*,int ,...) ;
 int recover_from_error (int ) ;
 int reset_aux_dev (int ) ;
 int set_mouse_mode (int ) ;
 int set_mouse_resolution (int ,int ) ;
 int set_mouse_sampling_rate (int ,int ) ;
 int set_mouse_scaling (int ,int) ;
 int stub1 (struct psm_softc*,int ) ;
 int test_aux_port (int ) ;
 TYPE_3__* vendortype ;
 int verbose ;

__attribute__((used)) static int
doinitialize(struct psm_softc *sc, mousemode_t *mode)
{
 KBDC kbdc = sc->kbdc;
 int stat[3];
 int i;

 switch((i = test_aux_port(kbdc))) {
 case 1:
 case 2:
 case 3:
 case 128:
  if (verbose)
   log(LOG_DEBUG,
       "psm%d: strange result for test aux port (%d).\n",
       sc->unit, i);

 case 0:
  break;
 case -1:
 default:
  recover_from_error(kbdc);
  if (sc->config & PSM_CONFIG_IGNPORTERROR)
   break;
  log(LOG_ERR, "psm%d: the aux port is not functioning (%d).\n",
      sc->unit, i);
  return (FALSE);
 }

 if (sc->config & PSM_CONFIG_NORESET) {




 } else {




  if (!reset_aux_dev(kbdc)) {
   recover_from_error(kbdc);
   log(LOG_ERR, "psm%d: failed to reset the aux device.\n",
       sc->unit);
   return (FALSE);
  }
 }





 if (!enable_aux_dev(kbdc) || !disable_aux_dev(kbdc)) {
  log(LOG_ERR, "psm%d: failed to enable the aux device.\n",
      sc->unit);
  return (FALSE);
 }
 empty_both_buffers(kbdc, 10);


 for (i = 0; vendortype[i].probefunc != ((void*)0); ++i)
  if (vendortype[i].model == sc->hw.model)
   (*vendortype[i].probefunc)(sc, REINIT);


 if (mode != (mousemode_t *)((void*)0)) {
  if (mode->rate > 0)
   mode->rate = set_mouse_sampling_rate(kbdc, mode->rate);
  if (mode->resolution >= 0)
   mode->resolution =
       set_mouse_resolution(kbdc, mode->resolution);
  set_mouse_scaling(kbdc, 1);
  set_mouse_mode(kbdc);
 }


 sc->flags |= PSM_NEED_SYNCBITS;


 if (get_mouse_status(kbdc, stat, 0, 3) < 3)
  log(LOG_DEBUG, "psm%d: failed to get status (doinitialize).\n",
      sc->unit);

 return (TRUE);
}
