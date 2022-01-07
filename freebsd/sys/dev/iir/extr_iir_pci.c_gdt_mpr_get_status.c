
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct gdt_softc {int sc_dpmem; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_MISC ;
 int GDT_MPR_EDOOR ;
 int bus_read_1 (int ,int ) ;

u_int8_t
gdt_mpr_get_status(struct gdt_softc *gdt)
{
    GDT_DPRINTF(GDT_D_MISC, ("gdt_mpr_get_status(%p) ", gdt));

    return bus_read_1(gdt->sc_dpmem, GDT_MPR_EDOOR);
}
