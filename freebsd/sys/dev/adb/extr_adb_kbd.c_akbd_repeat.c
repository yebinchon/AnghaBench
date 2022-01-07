
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_6__ {int kb_delay2; TYPE_1__ kb_callback; } ;
struct adb_kbd_softc {int buffers; int* buffer; int last_press; TYPE_2__ sc_kbd; int sc_repeater; int sc_mutex; } ;


 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int callout_reset (int *,int ,void (*) (void*),struct adb_kbd_softc*) ;
 int ms_to_ticks (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
akbd_repeat(void *xsc) {
 struct adb_kbd_softc *sc = xsc;
 int notify_kbd = 0;



 mtx_lock(&sc->sc_mutex);
  if (sc->buffers < 7) {
   sc->buffer[sc->buffers++] = sc->last_press | (1 << 7);
   sc->buffer[sc->buffers++] = sc->last_press;

   notify_kbd = 1;
  }
 mtx_unlock(&sc->sc_mutex);

 if (notify_kbd && KBD_IS_ACTIVE(&sc->sc_kbd)
     && KBD_IS_BUSY(&sc->sc_kbd)) {
  sc->sc_kbd.kb_callback.kc_func(&sc->sc_kbd,
      KBDIO_KEYINPUT, sc->sc_kbd.kb_callback.kc_arg);
 }


 callout_reset(&sc->sc_repeater, ms_to_ticks(sc->sc_kbd.kb_delay2),
     akbd_repeat, sc);
}
