
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_6__ {scalar_t__ event_source; int application; } ;
typedef TYPE_1__ gdt_evt_str ;


 int FALSE ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_MISC ;
 int GDT_MAX_EVENTS ;
 int TRUE ;
 TYPE_1__* ebuffer ;
 int elastidx ;
 int elock ;
 int eoldidx ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void gdt_readapp_event(u_int8_t application, gdt_evt_str *estr)
{
    gdt_evt_str *e;
    int found = FALSE;
    int eindex;

    GDT_DPRINTF(GDT_D_MISC, ("gdt_readapp_event(%d)\n", application));
    mtx_lock(&elock);
    eindex = eoldidx;
    for (;;) {
        e = &ebuffer[eindex];
        if (e->event_source == 0)
            break;
        if ((e->application & application) == 0) {
            e->application |= application;
            found = TRUE;
            break;
        }
        if (eindex == elastidx)
            break;
        if (++eindex == GDT_MAX_EVENTS)
            eindex = 0;
    }
    if (found)
        memcpy(estr, e, sizeof(gdt_evt_str));
    else
        estr->event_source = 0;
    mtx_unlock(&elock);
}
