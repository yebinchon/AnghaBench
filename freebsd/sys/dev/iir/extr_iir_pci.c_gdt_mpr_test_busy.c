
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int sc_dpmem; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_MISC ;
 int GDT_MPR_SEMA0 ;
 int bus_read_1 (int ,int ) ;

int
gdt_mpr_test_busy(struct gdt_softc *gdt)
{
    GDT_DPRINTF(GDT_D_MISC, ("gdt_mpr_test_busy(%p) ", gdt));

    return (bus_read_1(gdt->sc_dpmem, GDT_MPR_SEMA0) & 1);
}
