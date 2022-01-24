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
struct agp_i810_softc {int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I810_PGTBL_CTL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct agp_i810_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct agp_i810_softc *sc;
	unsigned int pgtblctl;

	sc = FUNC2(dev);
	pgtblctl = FUNC0(sc->sc_res[0], AGP_I810_PGTBL_CTL);
	pgtblctl &= ~1;
	FUNC1(sc->sc_res[0], AGP_I810_PGTBL_CTL, pgtblctl);
}