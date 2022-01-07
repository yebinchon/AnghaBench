
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int kbdc; } ;


 int EIO ;
 int FALSE ;
 int KBD_DISABLE_AUX_INT ;
 int KBD_DISABLE_KBD_INT ;
 int KBD_DISABLE_KBD_PORT ;
 int KBD_ENABLE_AUX_PORT ;
 int TRUE ;
 int empty_aux_buffer (int ,int ) ;
 int flushpackets (struct psm_softc*) ;
 int get_controller_command_byte (int ) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int read_aux_data_no_wait (int ) ;
 int set_controller_command_byte (int ,int ,int) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
block_mouse_data(struct psm_softc *sc, int *c)
{
 int s;

 if (!kbdc_lock(sc->kbdc, TRUE))
  return (EIO);

 s = spltty();
 *c = get_controller_command_byte(sc->kbdc);
 if ((*c == -1) || !set_controller_command_byte(sc->kbdc,
     kbdc_get_device_mask(sc->kbdc),
     KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
     KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {

  splx(s);
  kbdc_lock(sc->kbdc, FALSE);
  return (EIO);
 }
 empty_aux_buffer(sc->kbdc, 0);
 read_aux_data_no_wait(sc->kbdc);
 flushpackets(sc);
 splx(s);

 return (0);
}
