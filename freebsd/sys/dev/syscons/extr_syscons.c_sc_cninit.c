
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct consdev {int dummy; } ;
struct TYPE_2__ {int * dev; } ;


 int SC_KERNEL_CONSOLE ;
 int sc_console ;
 int sc_console_unit ;
 struct consdev* sc_consptr ;
 int sc_get_cons_priority (int*,int*) ;
 TYPE_1__* sc_get_softc (int,int) ;
 int sc_get_stat (int ) ;
 int scinit (int,int) ;

__attribute__((used)) static void
sc_cninit(struct consdev *cp)
{
    int unit;
    int flags;

    sc_get_cons_priority(&unit, &flags);
    scinit(unit, flags | SC_KERNEL_CONSOLE);
    sc_console_unit = unit;
    sc_console = sc_get_stat(sc_get_softc(unit, SC_KERNEL_CONSOLE)->dev[0]);
    sc_consptr = cp;
}
