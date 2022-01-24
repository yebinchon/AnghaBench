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
struct gdt_softc {int /*<<< orphan*/  sc_dpmem; } ;

/* Variables and functions */
 int FUNC0 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_INTR ; 
 int /*<<< orphan*/  GDT_EDOOR_EN ; 
#define  GDT_MPR 128 
 int /*<<< orphan*/  GDT_MPR_EDOOR ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct gdt_softc *gdt)
{
    FUNC1(GDT_D_INTR, ("gdt_pci_enable_intr(%p) ", gdt));

    switch(FUNC0(gdt)) {
      case GDT_MPR:
        FUNC3(gdt->sc_dpmem, GDT_MPR_EDOOR, 0xff);
        FUNC3(gdt->sc_dpmem, GDT_EDOOR_EN,
	    FUNC2(gdt->sc_dpmem, GDT_EDOOR_EN) & ~4);
        break;
    }
}