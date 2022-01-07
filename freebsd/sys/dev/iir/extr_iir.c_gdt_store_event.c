
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct timeval {int tv_sec; } ;
struct TYPE_6__ {scalar_t__ size; int event_string; int eu; } ;
struct TYPE_5__ {scalar_t__ event_source; scalar_t__ event_idx; int same_count; scalar_t__ application; TYPE_2__ event_data; int last_stamp; int first_stamp; } ;
typedef TYPE_1__ gdt_evt_str ;
typedef TYPE_2__ gdt_evt_data ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_MISC ;
 size_t GDT_MAX_EVENTS ;
 TYPE_1__* ebuffer ;
 size_t elastidx ;
 int elock ;
 size_t eoldidx ;
 int getmicrotime (struct timeval*) ;
 int memcmp (char*,char*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strcmp (char*,char*) ;

void gdt_store_event(u_int16_t source, u_int16_t idx,
                             gdt_evt_data *evt)
{
    gdt_evt_str *e;
    struct timeval tv;

    GDT_DPRINTF(GDT_D_MISC, ("gdt_store_event(%d, %d)\n", source, idx));
    if (source == 0)
        return;

    mtx_lock(&elock);
    if (ebuffer[elastidx].event_source == source &&
        ebuffer[elastidx].event_idx == idx &&
        ((evt->size != 0 && ebuffer[elastidx].event_data.size != 0 &&
          !memcmp((char *)&ebuffer[elastidx].event_data.eu,
                  (char *)&evt->eu, evt->size)) ||
         (evt->size == 0 && ebuffer[elastidx].event_data.size == 0 &&
          !strcmp((char *)&ebuffer[elastidx].event_data.event_string,
                  (char *)&evt->event_string)))) {
        e = &ebuffer[elastidx];
        getmicrotime(&tv);
        e->last_stamp = tv.tv_sec;
        ++e->same_count;
    } else {
        if (ebuffer[elastidx].event_source != 0) {
            ++elastidx;
            if (elastidx == GDT_MAX_EVENTS)
                elastidx = 0;
            if (elastidx == eoldidx) {
                ++eoldidx;
                if (eoldidx == GDT_MAX_EVENTS)
                    eoldidx = 0;
            }
        }
        e = &ebuffer[elastidx];
        e->event_source = source;
        e->event_idx = idx;
        getmicrotime(&tv);
        e->first_stamp = e->last_stamp = tv.tv_sec;
        e->same_count = 1;
        e->event_data = *evt;
        e->application = 0;
    }
    mtx_unlock(&elock);
}
