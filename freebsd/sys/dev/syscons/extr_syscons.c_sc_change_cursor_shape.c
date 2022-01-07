
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_7__ {int dflt_curs_attr; TYPE_2__* sc; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_8__ {int first_vty; int vtys; int curs_attr; int dflt_curs_attr; } ;
typedef TYPE_2__ sc_softc_t ;


 int CONS_DEFAULT_CURSOR ;
 int CONS_LOCAL_CURSOR ;
 int CONS_RESET_CURSOR ;
 int CONS_SHAPEONLY_CURSOR ;
 struct tty* SC_DEV (TYPE_2__*,int) ;
 int change_cursor_shape (TYPE_1__*,int,int,int) ;
 int sc_adjust_ca (int *,int,int,int) ;
 TYPE_1__* sc_get_stat (struct tty*) ;
 int spltty () ;
 int splx (int) ;

void
sc_change_cursor_shape(scr_stat *scp, int flags, int base, int height)
{
    sc_softc_t *sc;
    struct tty *tp;
    int s;
    int i;

    if (flags == -1)
 flags = CONS_SHAPEONLY_CURSOR;

    s = spltty();
    if (flags & CONS_LOCAL_CURSOR) {

 change_cursor_shape(scp, flags, base, height);
 splx(s);
 return;
    }


    sc = scp->sc;
    if (flags & CONS_RESET_CURSOR)
 sc->curs_attr = sc->dflt_curs_attr;
    else if (flags & CONS_DEFAULT_CURSOR) {
 sc_adjust_ca(&sc->dflt_curs_attr, flags, base, height);
 sc->curs_attr = sc->dflt_curs_attr;
    } else
 sc_adjust_ca(&sc->curs_attr, flags, base, height);

    for (i = sc->first_vty; i < sc->first_vty + sc->vtys; ++i) {
 if ((tp = SC_DEV(sc, i)) == ((void*)0))
     continue;
 if ((scp = sc_get_stat(tp)) == ((void*)0))
     continue;
 scp->dflt_curs_attr = sc->curs_attr;
 change_cursor_shape(scp, CONS_RESET_CURSOR, -1, -1);
    }
    splx(s);
}
