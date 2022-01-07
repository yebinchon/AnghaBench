
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ukbd_softc {int sc_flags; int sc_otime; int sc_ntime; int sc_odata; int sc_ndata; scalar_t__* sc_buffered_char; scalar_t__ sc_composed_char; scalar_t__ sc_accents; int sc_state; } ;
struct TYPE_3__ {struct ukbd_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int LOCK_MASK ;
 int UKBD_FLAG_COMPOSE ;
 int UKBD_FLAG_POLLING ;
 int UKBD_LOCK_ASSERT () ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
ukbd_clear_state(keyboard_t *kbd)
{
 struct ukbd_softc *sc = kbd->kb_data;

 UKBD_LOCK_ASSERT();

 sc->sc_flags &= ~(UKBD_FLAG_COMPOSE | UKBD_FLAG_POLLING);
 sc->sc_state &= LOCK_MASK;
 sc->sc_accents = 0;
 sc->sc_composed_char = 0;




 memset(&sc->sc_ndata, 0, sizeof(sc->sc_ndata));
 memset(&sc->sc_odata, 0, sizeof(sc->sc_odata));
 memset(&sc->sc_ntime, 0, sizeof(sc->sc_ntime));
 memset(&sc->sc_otime, 0, sizeof(sc->sc_otime));
}
