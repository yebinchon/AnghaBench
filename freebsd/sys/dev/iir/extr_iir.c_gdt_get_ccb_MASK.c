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
struct gdt_softc {int /*<<< orphan*/  sc_pending_gccb; int /*<<< orphan*/  sc_free_gccb; int /*<<< orphan*/  sc_lock; } ;
struct gdt_ccb {int dummy; } ;
struct TYPE_2__ {scalar_t__ cmd_index_act; scalar_t__ cmd_index_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_QUEUE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct gdt_ccb* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gdt_ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ gdt_stat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sle ; 

__attribute__((used)) static struct gdt_ccb *
FUNC5(struct gdt_softc *gdt)
{
    struct gdt_ccb *gccb;
    
    FUNC0(GDT_D_QUEUE, ("gdt_get_ccb(%p)\n", gdt));

    FUNC4(&gdt->sc_lock, MA_OWNED);
    gccb = FUNC1(&gdt->sc_free_gccb);
    if (gccb != NULL) {
        FUNC3(&gdt->sc_free_gccb, sle);
        FUNC2(&gdt->sc_pending_gccb, gccb, sle);
        ++gdt_stat.cmd_index_act;
        if (gdt_stat.cmd_index_act > gdt_stat.cmd_index_max)
            gdt_stat.cmd_index_max = gdt_stat.cmd_index_act;
    }
    return (gccb);
}