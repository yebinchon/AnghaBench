
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdt_softc {int sc_init_level; int sc_parent_dmat; int sc_buffer_dmat; int sc_gcscratch_dmat; int sc_gcscratch_dmamap; int sc_gcscratch; TYPE_1__* sc_gccbs; int sc_dev; } ;
struct TYPE_2__ {int gc_dmamap; int gc_timeout; int gc_map_flag; } ;


 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_INIT ;
 int GDT_MAXCMDS ;
 int M_GDTBUF ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int callout_drain (int *) ;
 int free (TYPE_1__*,int ) ;
 int gdt_destroy_dev (int ) ;

void
iir_free(struct gdt_softc *gdt)
{
    int i;

    GDT_DPRINTF(GDT_D_INIT, ("iir_free()\n"));

    switch (gdt->sc_init_level) {
      default:
        gdt_destroy_dev(gdt->sc_dev);
      case 5:
        for (i = GDT_MAXCMDS-1; i >= 0; i--)
            if (gdt->sc_gccbs[i].gc_map_flag) {
  callout_drain(&gdt->sc_gccbs[i].gc_timeout);
                bus_dmamap_destroy(gdt->sc_buffer_dmat,
                                   gdt->sc_gccbs[i].gc_dmamap);
     }
        bus_dmamap_unload(gdt->sc_gcscratch_dmat, gdt->sc_gcscratch_dmamap);
        free(gdt->sc_gccbs, M_GDTBUF);
      case 4:
        bus_dmamem_free(gdt->sc_gcscratch_dmat, gdt->sc_gcscratch, gdt->sc_gcscratch_dmamap);
      case 3:
        bus_dma_tag_destroy(gdt->sc_gcscratch_dmat);
      case 2:
        bus_dma_tag_destroy(gdt->sc_buffer_dmat);
      case 1:
        bus_dma_tag_destroy(gdt->sc_parent_dmat);
      case 0:
        break;
    }
}
