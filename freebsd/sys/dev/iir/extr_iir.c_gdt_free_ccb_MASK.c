#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gdt_softc {int sc_state; int /*<<< orphan*/  sc_free_gccb; int /*<<< orphan*/  sc_pending_gccb; int /*<<< orphan*/  sc_lock; } ;
struct gdt_ccb {int /*<<< orphan*/  gc_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_index_act; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_QUEUE ; 
 int /*<<< orphan*/  GDT_GCF_UNUSED ; 
 int GDT_SHUTDOWN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gdt_ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gdt_ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdt_ccb ; 
 TYPE_1__ gdt_stat ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sle ; 
 int /*<<< orphan*/  FUNC4 (struct gdt_ccb*) ; 

void
FUNC5(struct gdt_softc *gdt, struct gdt_ccb *gccb)
{

    FUNC0(GDT_D_QUEUE, ("gdt_free_ccb(%p, %p)\n", gdt, gccb));

    FUNC3(&gdt->sc_lock, MA_OWNED);
    gccb->gc_flags = GDT_GCF_UNUSED;
    FUNC2(&gdt->sc_pending_gccb, gccb, gdt_ccb, sle);
    FUNC1(&gdt->sc_free_gccb, gccb, sle);
    --gdt_stat.cmd_index_act;
    if (gdt->sc_state & GDT_SHUTDOWN)
        FUNC4(gccb);
}