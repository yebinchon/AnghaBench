
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_6__ {TYPE_1__ kb_callback; } ;
struct sunkbd_softc {int sc_repeat_key; int sc_repeating; TYPE_2__ sc_kbd; } ;


 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
sunkbd_repeat(void *v)
{
 struct sunkbd_softc *sc = v;

 if (KBD_IS_ACTIVE(&sc->sc_kbd) && KBD_IS_BUSY(&sc->sc_kbd)) {
  if (sc->sc_repeat_key != -1) {
   sc->sc_repeating = 1;
   sc->sc_kbd.kb_callback.kc_func(&sc->sc_kbd,
       KBDIO_KEYINPUT, sc->sc_kbd.kb_callback.kc_arg);
  }
 }
}
