
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ps2kbd_softc {int mtx; } ;
struct extended_translation {scalar_t__ keysym; int scancode; int flags; } ;


 int SCANCODE_E0_PREFIX ;
 int* ascii_translations ;
 int assert (int ) ;
 struct extended_translation* extended_translations ;
 int fifo_put (struct ps2kbd_softc*,int) ;
 int fprintf (int ,char*,int) ;
 int pthread_mutex_isowned_np (int *) ;
 int stderr ;

__attribute__((used)) static void
ps2kbd_keysym_queue(struct ps2kbd_softc *sc,
    int down, uint32_t keysym)
{
 assert(pthread_mutex_isowned_np(&sc->mtx));
 int e0_prefix, found;
 uint8_t code;
 const struct extended_translation *trans;

 found = 0;
 if (keysym < 0x80) {
  code = ascii_translations[keysym];
  e0_prefix = 0;
  found = 1;
 } else {
  for (trans = &(extended_translations[0]); trans->keysym != 0;
      trans++) {
   if (keysym == trans->keysym) {
    code = trans->scancode;
    e0_prefix = trans->flags & SCANCODE_E0_PREFIX;
    found = 1;
    break;
   }
  }
 }

 if (!found) {
  fprintf(stderr, "Unhandled ps2 keyboard keysym 0x%x\n", keysym);
  return;
 }

 if (e0_prefix)
  fifo_put(sc, 0xe0);
 if (!down)
  fifo_put(sc, 0xf0);
 fifo_put(sc, code);
}
