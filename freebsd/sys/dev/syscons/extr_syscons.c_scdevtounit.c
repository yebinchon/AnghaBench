
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sc; } ;
struct TYPE_3__ {int unit; } ;


 int MAXCONS ;
 int SC_CONSOLECTL ;
 int SC_VTY (struct tty*) ;
 TYPE_2__* sc_console ;
 int sc_max_unit () ;

__attribute__((used)) static int
scdevtounit(struct tty *tp)
{
    int vty = SC_VTY(tp);

    if (vty == SC_CONSOLECTL)
 return ((sc_console != ((void*)0)) ? sc_console->sc->unit : -1);
    else if ((vty < 0) || (vty >= MAXCONS*sc_max_unit()))
 return -1;
    else
 return vty/MAXCONS;
}
