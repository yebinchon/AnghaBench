
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdt_softc {int sc_pending_gccb; int sc_free_gccb; int sc_lock; } ;
struct gdt_ccb {int dummy; } ;
struct TYPE_2__ {scalar_t__ cmd_index_act; scalar_t__ cmd_index_max; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_QUEUE ;
 int MA_OWNED ;
 struct gdt_ccb* SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,struct gdt_ccb*,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 TYPE_1__ gdt_stat ;
 int mtx_assert (int *,int ) ;
 int sle ;

__attribute__((used)) static struct gdt_ccb *
gdt_get_ccb(struct gdt_softc *gdt)
{
    struct gdt_ccb *gccb;

    GDT_DPRINTF(GDT_D_QUEUE, ("gdt_get_ccb(%p)\n", gdt));

    mtx_assert(&gdt->sc_lock, MA_OWNED);
    gccb = SLIST_FIRST(&gdt->sc_free_gccb);
    if (gccb != ((void*)0)) {
        SLIST_REMOVE_HEAD(&gdt->sc_free_gccb, sle);
        SLIST_INSERT_HEAD(&gdt->sc_pending_gccb, gccb, sle);
        ++gdt_stat.cmd_index_act;
        if (gdt_stat.cmd_index_act > gdt_stat.cmd_index_max)
            gdt_stat.cmd_index_max = gdt_stat.cmd_index_act;
    }
    return (gccb);
}
