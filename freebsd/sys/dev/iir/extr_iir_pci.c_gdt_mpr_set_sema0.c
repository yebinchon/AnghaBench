
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int sc_dpmem; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_MISC ;
 int GDT_MPR_SEMA0 ;
 int bus_write_1 (int ,int ,int) ;

void
gdt_mpr_set_sema0(struct gdt_softc *gdt)
{
    GDT_DPRINTF(GDT_D_MISC, ("gdt_mpr_set_sema0(%p) ", gdt));

    bus_write_1(gdt->sc_dpmem, GDT_MPR_SEMA0, 1);
}
