
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int state; int kbdc; int unit; int callout; } ;


 int EIO ;
 int FALSE ;
 int KBD_DISABLE_AUX_INT ;
 int KBD_DISABLE_AUX_PORT ;
 int KBD_DISABLE_KBD_INT ;
 int KBD_DISABLE_KBD_PORT ;
 int KBD_ENABLE_AUX_PORT ;
 int KBD_KBD_CONTROL_BITS ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int PSM_VALID ;
 int TRUE ;
 int callout_stop (int *) ;
 int disable_aux_dev (int ) ;
 int empty_aux_buffer (int ,int) ;
 int get_controller_command_byte (int ) ;
 int get_mouse_status (int ,int*,int ,int) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int log (int ,char*,int ) ;
 int set_controller_command_byte (int ,int ,int) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
psmclose(struct psm_softc *sc)
{
 int stat[3];
 int command_byte;
 int s;


 if (!kbdc_lock(sc->kbdc, TRUE))
  return (EIO);


 s = spltty();
 command_byte = get_controller_command_byte(sc->kbdc);
 if (command_byte == -1) {
  kbdc_lock(sc->kbdc, FALSE);
  splx(s);
  return (EIO);
 }


 if (!set_controller_command_byte(sc->kbdc,
     kbdc_get_device_mask(sc->kbdc),
     KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
     KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
  log(LOG_ERR,
      "psm%d: failed to disable the aux int (psmclose).\n",
      sc->unit);






 }
 splx(s);


 callout_stop(&sc->callout);


 empty_aux_buffer(sc->kbdc, 10);


 if (sc->state & PSM_VALID) {
  if (!disable_aux_dev(sc->kbdc)) {






   log(LOG_ERR,
       "psm%d: failed to disable the device (psmclose).\n",
       sc->unit);
  }

  if (get_mouse_status(sc->kbdc, stat, 0, 3) < 3)
   log(LOG_DEBUG,
       "psm%d: failed to get status (psmclose).\n",
       sc->unit);
 }

 if (!set_controller_command_byte(sc->kbdc,
     kbdc_get_device_mask(sc->kbdc),
     (command_byte & KBD_KBD_CONTROL_BITS) |
     KBD_DISABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {




  log(LOG_ERR,
      "psm%d: failed to disable the aux port (psmclose).\n",
      sc->unit);
 }


 empty_aux_buffer(sc->kbdc, 10);


 kbdc_lock(sc->kbdc, FALSE);
 return (0);
}
