
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdt_softc {int sc_state; int sc_free_gccb; int sc_pending_gccb; int sc_lock; } ;
struct gdt_ccb {int gc_flags; } ;
struct TYPE_2__ {int cmd_index_act; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_QUEUE ;
 int GDT_GCF_UNUSED ;
 int GDT_SHUTDOWN ;
 int MA_OWNED ;
 int SLIST_INSERT_HEAD (int *,struct gdt_ccb*,int ) ;
 int SLIST_REMOVE (int *,struct gdt_ccb*,int ,int ) ;
 int gdt_ccb ;
 TYPE_1__ gdt_stat ;
 int mtx_assert (int *,int ) ;
 int sle ;
 int wakeup (struct gdt_ccb*) ;

void
gdt_free_ccb(struct gdt_softc *gdt, struct gdt_ccb *gccb)
{

    GDT_DPRINTF(GDT_D_QUEUE, ("gdt_free_ccb(%p, %p)\n", gdt, gccb));

    mtx_assert(&gdt->sc_lock, MA_OWNED);
    gccb->gc_flags = GDT_GCF_UNUSED;
    SLIST_REMOVE(&gdt->sc_pending_gccb, gccb, gdt_ccb, sle);
    SLIST_INSERT_HEAD(&gdt->sc_free_gccb, gccb, sle);
    --gdt_stat.cmd_index_act;
    if (gdt->sc_state & GDT_SHUTDOWN)
        wakeup(gccb);
}
