
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int state; int kbdc; int unit; int mode; int lastinputerr; scalar_t__ pkterrors; scalar_t__ syncerrors; int callout; int watchdog; } ;


 int EIO ;
 int ENXIO ;
 int FALSE ;
 int KBD_DISABLE_AUX_INT ;
 int KBD_DISABLE_AUX_PORT ;
 int KBD_DISABLE_KBD_INT ;
 int KBD_DISABLE_KBD_PORT ;
 int KBD_ENABLE_AUX_PORT ;
 int KBD_KBD_CONTROL_BITS ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int PSM_EV_OPEN_A ;
 int PSM_EV_OPEN_R ;
 int PSM_OPEN ;
 int PSM_VALID ;
 int TRUE ;
 int VLOG (int,int ) ;
 int callout_stop (int *) ;
 int disable_aux_dev (int ) ;
 scalar_t__ doinitialize (struct psm_softc*,int *) ;
 int doopen (struct psm_softc*,int) ;
 int empty_aux_buffer (int ,int) ;
 int empty_both_buffers (int ,int) ;
 int flushpackets (struct psm_softc*) ;
 int get_controller_command_byte (int ) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int log (int ,char*,int ) ;
 int memset (int *,int ,int) ;
 int restore_controller (int ,int) ;
 int set_controller_command_byte (int ,int ,int) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
reinitialize(struct psm_softc *sc, int doinit)
{
 int err;
 int c;
 int s;


 if (!kbdc_lock(sc->kbdc, TRUE))
  return (EIO);
 s = spltty();


 sc->watchdog = FALSE;
 callout_stop(&sc->callout);


 empty_both_buffers(sc->kbdc, 10);
 c = get_controller_command_byte(sc->kbdc);
 VLOG(2, (LOG_DEBUG,
     "psm%d: current command byte: %04x (reinitialize).\n",
     sc->unit, c));


 if ((c == -1) || !set_controller_command_byte(sc->kbdc,
     kbdc_get_device_mask(sc->kbdc),
     KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
     KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {

  splx(s);
  kbdc_lock(sc->kbdc, FALSE);
  log(LOG_ERR,
      "psm%d: unable to set the command byte (reinitialize).\n",
      sc->unit);
  return (EIO);
 }


 if (sc->state & PSM_VALID) {

  disable_aux_dev(sc->kbdc);
  empty_aux_buffer(sc->kbdc, 10);
 }
 flushpackets(sc);
 sc->syncerrors = 0;
 sc->pkterrors = 0;
 memset(&sc->lastinputerr, 0, sizeof(sc->lastinputerr));


 err = 0;
 if (doinit) {
  if (doinitialize(sc, &sc->mode)) {

   sc->state |= PSM_VALID;
  } else {

   restore_controller(sc->kbdc, c);
   sc->state &= ~PSM_VALID;
   log(LOG_ERR,
       "psm%d: the aux device has gone! (reinitialize).\n",
       sc->unit);
   err = ENXIO;
  }
 }
 splx(s);


 if ((sc->state & (PSM_OPEN | PSM_EV_OPEN_R | PSM_EV_OPEN_A)) &&
     (err == 0)) {

  err = doopen(sc, c);
  if (err != 0)
   log(LOG_ERR, "psm%d: failed to enable the device "
       "(reinitialize).\n", sc->unit);
 } else {

  if (!set_controller_command_byte(sc->kbdc,
      kbdc_get_device_mask(sc->kbdc),
      (c & KBD_KBD_CONTROL_BITS) |
      KBD_DISABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {

   log(LOG_ERR, "psm%d: failed to disable the aux port "
       "(reinitialize).\n", sc->unit);
   err = EIO;
  }
 }

 kbdc_lock(sc->kbdc, FALSE);
 return (err);
}
