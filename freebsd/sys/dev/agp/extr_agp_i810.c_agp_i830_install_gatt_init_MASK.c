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
typedef  int uint32_t ;
struct agp_i810_softc {TYPE_1__* gatt; int /*<<< orphan*/ * sc_res; } ;
struct TYPE_2__ {int ag_physical; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I810_PGTBL_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct agp_i810_softc *sc)
{
	uint32_t pgtblctl;

	/*
	 * The i830 automatically initializes the 128k gatt on boot.
	 * GATT address is already in there, make sure it's enabled.
	 */
	pgtblctl = FUNC0(sc->sc_res[0], AGP_I810_PGTBL_CTL);
	pgtblctl |= 1;
	FUNC1(sc->sc_res[0], AGP_I810_PGTBL_CTL, pgtblctl);
	
	sc->gatt->ag_physical = pgtblctl & ~1;
}