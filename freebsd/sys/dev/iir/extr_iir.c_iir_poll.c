
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int dummy; } ;
struct cam_sim {int dummy; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_CMD ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int iir_intr_locked (struct gdt_softc*) ;

__attribute__((used)) static void
iir_poll( struct cam_sim *sim )
{
    struct gdt_softc *gdt;

    gdt = (struct gdt_softc *)cam_sim_softc( sim );
    GDT_DPRINTF(GDT_D_CMD, ("iir_poll sim %p gdt %p\n", sim, gdt));
    iir_intr_locked(gdt);
}
