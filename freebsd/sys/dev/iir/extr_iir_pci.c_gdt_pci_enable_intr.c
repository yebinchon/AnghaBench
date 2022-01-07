
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int sc_dpmem; } ;


 int GDT_CLASS (struct gdt_softc*) ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_INTR ;
 int GDT_EDOOR_EN ;

 int GDT_MPR_EDOOR ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;

void
gdt_pci_enable_intr(struct gdt_softc *gdt)
{
    GDT_DPRINTF(GDT_D_INTR, ("gdt_pci_enable_intr(%p) ", gdt));

    switch(GDT_CLASS(gdt)) {
      case 128:
        bus_write_1(gdt->sc_dpmem, GDT_MPR_EDOOR, 0xff);
        bus_write_1(gdt->sc_dpmem, GDT_EDOOR_EN,
     bus_read_1(gdt->sc_dpmem, GDT_EDOOR_EN) & ~4);
        break;
    }
}
