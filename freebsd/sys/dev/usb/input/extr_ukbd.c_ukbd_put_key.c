
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ukbd_softc {size_t sc_inputs; int* sc_input; size_t sc_inputtail; int * sc_evdev; } ;


 int DPRINTF (char*,...) ;
 int EVDEV_RCPT_HW_KBD ;
 int EV_KEY ;
 int KEY_INDEX (int) ;
 int KEY_RELEASE ;
 size_t UKBD_IN_BUF_SIZE ;
 int UKBD_LOCK_ASSERT () ;
 int evdev_hid2key (int ) ;
 int evdev_push_event (int *,int ,int ,int) ;
 int evdev_rcpt_mask ;
 int evdev_sync (int *) ;

__attribute__((used)) static void
ukbd_put_key(struct ukbd_softc *sc, uint32_t key)
{

 UKBD_LOCK_ASSERT();

 DPRINTF("0x%02x (%d) %s\n", key, key,
     (key & KEY_RELEASE) ? "released" : "pressed");
 if (sc->sc_inputs < UKBD_IN_BUF_SIZE) {
  sc->sc_input[sc->sc_inputtail] = key;
  ++(sc->sc_inputs);
  ++(sc->sc_inputtail);
  if (sc->sc_inputtail >= UKBD_IN_BUF_SIZE) {
   sc->sc_inputtail = 0;
  }
 } else {
  DPRINTF("input buffer is full\n");
 }
}
