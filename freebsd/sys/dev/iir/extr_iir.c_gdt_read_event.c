
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ event_source; } ;
typedef TYPE_1__ gdt_evt_str ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_MISC ;
 int GDT_MAX_EVENTS ;
 TYPE_1__* ebuffer ;
 int elastidx ;
 int elock ;
 int eoldidx ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int gdt_read_event(int handle, gdt_evt_str *estr)
{
    gdt_evt_str *e;
    int eindex;

    GDT_DPRINTF(GDT_D_MISC, ("gdt_read_event(%d)\n", handle));
    mtx_lock(&elock);
    if (handle == -1)
        eindex = eoldidx;
    else
        eindex = handle;
    estr->event_source = 0;

    if (eindex >= GDT_MAX_EVENTS) {
 mtx_unlock(&elock);
        return eindex;
    }
    e = &ebuffer[eindex];
    if (e->event_source != 0) {
        if (eindex != elastidx) {
            if (++eindex == GDT_MAX_EVENTS)
                eindex = 0;
        } else {
            eindex = -1;
        }
        memcpy(estr, e, sizeof(gdt_evt_str));
    }
    mtx_unlock(&elock);
    return eindex;
}
