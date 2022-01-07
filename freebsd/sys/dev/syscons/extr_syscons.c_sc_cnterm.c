
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct consdev {int dummy; } ;
struct TYPE_2__ {int (* te_term ) (int *,void**) ;} ;


 int M_DEVBUF ;
 int SC_KERNEL_CONSOLE ;
 int free (void*,int ) ;
 int mp_maxid ;
 int sc_clear_screen (int *) ;
 int * sc_console ;
 int sc_console_unit ;
 int ** sc_kts ;
 TYPE_1__* sc_ktsw ;
 int sccnupdate (int *) ;
 int scterm (int,int ) ;
 int stub1 (int *,void**) ;

__attribute__((used)) static void
sc_cnterm(struct consdev *cp)
{
    void *ts;
    int i;



    if (sc_console_unit < 0)
 return;






    if (sc_ktsw != ((void*)0)) {
 for (i = 0; i <= mp_maxid; i++) {
     ts = sc_kts[i];
     sc_kts[i] = ((void*)0);
     (*sc_ktsw->te_term)(sc_console, &ts);
     free(ts, M_DEVBUF);
 }
 sc_ktsw = ((void*)0);
    }
    scterm(sc_console_unit, SC_KERNEL_CONSOLE);
    sc_console_unit = -1;
    sc_console = ((void*)0);
}
