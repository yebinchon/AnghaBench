
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event_source; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_MISC ;
 TYPE_1__* ebuffer ;
 scalar_t__ elastidx ;
 int elock ;
 scalar_t__ eoldidx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void gdt_clear_events()
{
    GDT_DPRINTF(GDT_D_MISC, ("gdt_clear_events\n"));

    mtx_lock(&elock);
    eoldidx = elastidx = 0;
    ebuffer[0].event_source = 0;
    mtx_unlock(&elock);
}
