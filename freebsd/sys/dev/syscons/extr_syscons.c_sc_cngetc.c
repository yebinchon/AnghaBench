
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_cnstate {int kbd_opened; } ;
struct consdev {int dummy; } ;
struct TYPE_2__ {int sc; } ;


 int sc_cngetc_locked (struct sc_cnstate*) ;
 TYPE_1__* sc_console ;
 int sccnclose (int ,struct sc_cnstate*) ;
 int sccnopen (int ,struct sc_cnstate*,int) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
sc_cngetc(struct consdev *cd)
{
    struct sc_cnstate st;
    int c, s;


    sccnopen(sc_console->sc, &st, 1);
    s = spltty();
    if (!st.kbd_opened) {
 splx(s);
 sccnclose(sc_console->sc, &st);
 return -1;
    }
    c = sc_cngetc_locked(&st);
    splx(s);
    sccnclose(sc_console->sc, &st);
    return c;
}
