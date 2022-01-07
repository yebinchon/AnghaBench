
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ps2kbd_softc {int curcmd; int enabled; int mtx; } ;


 int const PS2KC_ACK ;
 int const PS2KC_BAT_SUCCESS ;
 int fifo_put (struct ps2kbd_softc*,int const) ;
 int fifo_reset (struct ps2kbd_softc*) ;
 int fprintf (int ,char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;

void
ps2kbd_write(struct ps2kbd_softc *sc, uint8_t val)
{
 pthread_mutex_lock(&sc->mtx);
 if (sc->curcmd) {
  switch (sc->curcmd) {
  case 128:
   fifo_put(sc, PS2KC_ACK);
   break;
  case 129:
   fifo_put(sc, PS2KC_ACK);
   break;
  case 130:
   fifo_put(sc, PS2KC_ACK);
   break;
  default:
   fprintf(stderr, "Unhandled ps2 keyboard current "
       "command byte 0x%02x\n", val);
   break;
  }
  sc->curcmd = 0;
 } else {
  switch (val) {
  case 0x00:
   fifo_put(sc, PS2KC_ACK);
   break;
  case 132:
   fifo_reset(sc);
   fifo_put(sc, PS2KC_ACK);
   fifo_put(sc, PS2KC_BAT_SUCCESS);
   break;
  case 135:
   sc->enabled = 0;
   fifo_put(sc, PS2KC_ACK);
   break;
  case 133:
   sc->enabled = 1;
   fifo_reset(sc);
   fifo_put(sc, PS2KC_ACK);
   break;
  case 128:
   sc->curcmd = val;
   fifo_put(sc, PS2KC_ACK);
   break;
  case 131:
   fifo_put(sc, PS2KC_ACK);
   fifo_put(sc, 0xab);
   fifo_put(sc, 0x83);
   break;
  case 129:
   sc->curcmd = val;
   fifo_put(sc, PS2KC_ACK);
   break;
  case 134:
   fifo_put(sc, 134);
   break;
  case 130:
   sc->curcmd = val;
   fifo_put(sc, PS2KC_ACK);
   break;
  default:
   fprintf(stderr, "Unhandled ps2 keyboard command "
       "0x%02x\n", val);
   break;
  }
 }
 pthread_mutex_unlock(&sc->mtx);
}
