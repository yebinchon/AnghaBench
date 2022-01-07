
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {scalar_t__ (* sc_test_busy ) (struct gdt_softc*) ;int sc_state; } ;
struct gdt_ccb {scalar_t__ gc_cmd_index; } ;


 int DELAY (int) ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_INIT ;
 int GDT_POLL_WAIT ;
 scalar_t__ iir_intr_locked (struct gdt_softc*) ;
 scalar_t__ stub1 (struct gdt_softc*) ;

__attribute__((used)) static int
gdt_wait(struct gdt_softc *gdt, struct gdt_ccb *gccb,
         int timeout)
{
    int rv = 0;

    GDT_DPRINTF(GDT_D_INIT,
                ("gdt_wait(%p, %p, %d)\n", gdt, gccb, timeout));

    gdt->sc_state |= GDT_POLL_WAIT;
    do {
        if (iir_intr_locked(gdt) == gccb->gc_cmd_index) {
            rv = 1;
            break;
        }
        DELAY(1);
    } while (--timeout);
    gdt->sc_state &= ~GDT_POLL_WAIT;

    while (gdt->sc_test_busy(gdt))
        DELAY(1);

    return (rv);
}
