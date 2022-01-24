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
typedef  int /*<<< orphan*/  uint32_t ;
struct agp_i810_softc {int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I810_PGTBL_CTL ; 
 int /*<<< orphan*/  AGP_I810_PGTBL_ENABLED ; 
 int /*<<< orphan*/  AGP_I810_PGTBL_SIZE_MASK ; 
 int /*<<< orphan*/  AGP_I965_PGTBL_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, uint32_t sz)
{
	struct agp_i810_softc *sc;
	uint32_t pgetbl_ctl, pgetbl_ctl2;

	sc = FUNC2(dev);

	/* Disable per-process page table. */
	pgetbl_ctl2 = FUNC0(sc->sc_res[0], AGP_I965_PGTBL_CTL2);
	pgetbl_ctl2 &= ~AGP_I810_PGTBL_ENABLED;
	FUNC1(sc->sc_res[0], AGP_I965_PGTBL_CTL2, pgetbl_ctl2);

	/* Write the new ggtt size. */
	pgetbl_ctl = FUNC0(sc->sc_res[0], AGP_I810_PGTBL_CTL);
	pgetbl_ctl &= ~AGP_I810_PGTBL_SIZE_MASK;
	pgetbl_ctl |= sz;
	FUNC1(sc->sc_res[0], AGP_I810_PGTBL_CTL, pgetbl_ctl);
}