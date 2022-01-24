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
struct agp_i810_softc {int /*<<< orphan*/  bdev; int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I810_PGTBL_CTL ; 
 int /*<<< orphan*/  AGP_I855_GCC1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct agp_i810_softc *sc = FUNC1(dev);

	FUNC2(dev, "AGP_I810_PGTBL_CTL: %08x\n",
	    FUNC0(sc->sc_res[0], AGP_I810_PGTBL_CTL));
	FUNC2(dev, "AGP_I855_GCC1: 0x%02x\n",
	    FUNC3(sc->bdev, AGP_I855_GCC1, 1));
}