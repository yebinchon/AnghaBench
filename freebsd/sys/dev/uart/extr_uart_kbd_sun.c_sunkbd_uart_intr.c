
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kc_arg; int (* kc_func ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__ kb_callback; } ;
struct sunkbd_softc {TYPE_3__ sc_kbd; TYPE_2__* sc_uart; } ;
struct TYPE_7__ {int sc_ttypend; scalar_t__ sc_leaving; } ;


 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_3__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_3__*) ;
 int SER_INT_MASK ;
 int SER_INT_RXREADY ;
 int atomic_readandclear_32 (int *) ;
 int stub1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
sunkbd_uart_intr(void *arg)
{
 struct sunkbd_softc *sc = arg;
 int pend;

 if (sc->sc_uart->sc_leaving)
  return;

 pend = atomic_readandclear_32(&sc->sc_uart->sc_ttypend);
 if (!(pend & SER_INT_MASK))
  return;

 if (pend & SER_INT_RXREADY) {
  if (KBD_IS_ACTIVE(&sc->sc_kbd) && KBD_IS_BUSY(&sc->sc_kbd)) {
   sc->sc_kbd.kb_callback.kc_func(&sc->sc_kbd,
       KBDIO_KEYINPUT, sc->sc_kbd.kb_callback.kc_arg);
  }
 }
}
