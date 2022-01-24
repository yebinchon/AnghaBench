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
struct gdt_softc {int sc_init_level; int /*<<< orphan*/  sc_parent_dmat; int /*<<< orphan*/  sc_buffer_dmat; int /*<<< orphan*/  sc_gcscratch_dmat; int /*<<< orphan*/  sc_gcscratch_dmamap; int /*<<< orphan*/  sc_gcscratch; TYPE_1__* sc_gccbs; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  gc_dmamap; int /*<<< orphan*/  gc_timeout; int /*<<< orphan*/  gc_map_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_INIT ; 
 int /*<<< orphan*/  GDT_MAXCMDS ; 
 int /*<<< orphan*/  M_GDTBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct gdt_softc *gdt)
{
    int i;

    FUNC0(GDT_D_INIT, ("iir_free()\n"));

    switch (gdt->sc_init_level) {
      default:
        FUNC7(gdt->sc_dev);
      case 5:
        for (i = GDT_MAXCMDS-1; i >= 0; i--) 
            if (gdt->sc_gccbs[i].gc_map_flag) {
		FUNC5(&gdt->sc_gccbs[i].gc_timeout);
                FUNC2(gdt->sc_buffer_dmat,
                                   gdt->sc_gccbs[i].gc_dmamap);
	    }
        FUNC3(gdt->sc_gcscratch_dmat, gdt->sc_gcscratch_dmamap);
        FUNC6(gdt->sc_gccbs, M_GDTBUF);
      case 4:
        FUNC4(gdt->sc_gcscratch_dmat, gdt->sc_gcscratch, gdt->sc_gcscratch_dmamap);
      case 3:
        FUNC1(gdt->sc_gcscratch_dmat);
      case 2:
        FUNC1(gdt->sc_buffer_dmat);
      case 1:
        FUNC1(gdt->sc_parent_dmat);
      case 0:
        break;
    }
}