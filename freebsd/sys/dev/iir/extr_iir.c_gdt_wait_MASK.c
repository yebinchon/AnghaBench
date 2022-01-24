#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gdt_softc {scalar_t__ (* sc_test_busy ) (struct gdt_softc*) ;int /*<<< orphan*/  sc_state; } ;
struct gdt_ccb {scalar_t__ gc_cmd_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_INIT ; 
 int /*<<< orphan*/  GDT_POLL_WAIT ; 
 scalar_t__ FUNC2 (struct gdt_softc*) ; 
 scalar_t__ FUNC3 (struct gdt_softc*) ; 

__attribute__((used)) static int
FUNC4(struct gdt_softc *gdt, struct gdt_ccb *gccb, 
         int timeout)
{
    int rv = 0;

    FUNC1(GDT_D_INIT,
                ("gdt_wait(%p, %p, %d)\n", gdt, gccb, timeout));

    gdt->sc_state |= GDT_POLL_WAIT;
    do {
        if (FUNC2(gdt) == gccb->gc_cmd_index) {
            rv = 1;
            break;
        }
        FUNC0(1);
    } while (--timeout);
    gdt->sc_state &= ~GDT_POLL_WAIT;
    
    while (gdt->sc_test_busy(gdt))
        FUNC0(1);               /* XXX correct? */

    return (rv);
}