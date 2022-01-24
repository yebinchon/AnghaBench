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
typedef  int uint8_t ;
struct syr827_softc {int /*<<< orphan*/  intr_hook; } ;
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ID1 ; 
 int ID1_DIE_MASK ; 
 int ID1_VENDOR_MASK ; 
 int ID1_VENDOR_SHIFT ; 
 int /*<<< orphan*/  ID2 ; 
 int ID2_DIE_REV_MASK ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct syr827_softc* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC4(void *pdev)
{
	struct syr827_softc *sc;
	device_t dev;
	uint8_t val;

	dev = pdev;
	sc = FUNC1(dev);

	if (bootverbose) {
		FUNC3(dev, ID1, &val, 1);
		FUNC2(dev, "Vendor ID: %x, DIE ID: %x\n",
		    (val & ID1_VENDOR_MASK) >> ID1_VENDOR_SHIFT,
		    val & ID1_DIE_MASK);
		FUNC3(dev, ID2, &val, 1);
		FUNC2(dev, "DIE Rev: %x\n", val & ID2_DIE_REV_MASK);
	}

	FUNC0(&sc->intr_hook);
}