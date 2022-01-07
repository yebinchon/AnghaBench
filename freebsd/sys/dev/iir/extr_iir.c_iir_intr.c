
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int sc_lock; } ;


 int iir_intr_locked (struct gdt_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
iir_intr(void *arg)
{
    struct gdt_softc *gdt = arg;

    mtx_lock(&gdt->sc_lock);
    iir_intr_locked(gdt);
    mtx_unlock(&gdt->sc_lock);
}
