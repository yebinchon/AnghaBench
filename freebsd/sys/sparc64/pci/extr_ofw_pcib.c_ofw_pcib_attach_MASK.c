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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ofw_pcib_gen_softc {TYPE_1__ ops_pcib_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIB_SUBTRACTIVE ; 
 int /*<<< orphan*/  PCIR_PRIBUS_1 ; 
 int /*<<< orphan*/  PCIR_SECBUS_1 ; 
#define  PCI_DEVID_ALI_M5249 129 
#define  PCI_VENDOR_PLX 128 
 struct ofw_pcib_gen_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ofw_pcib_gen_softc *sc;

	sc = FUNC0(dev);

	switch (FUNC2(dev)) {
	/*
	 * The ALi M5249 found in Fire-based machines by definition must me
	 * subtractive as they have a ISA bridge on their secondary side but
	 * don't indicate this in the class code although the ISA I/O range
	 * isn't included in their bridge decode.
	 */
	case PCI_DEVID_ALI_M5249:
		sc->ops_pcib_sc.flags |= PCIB_SUBTRACTIVE;
		break;
	}

	switch (FUNC3(dev)) {
	/*
	 * Concurrently write the primary and secondary bus numbers in order
	 * to work around a bug in PLX PEX 8114 causing the internal shadow
	 * copies of these not to be updated when setting them bytewise.
	 */
	case PCI_VENDOR_PLX:
		FUNC5(dev, PCIR_PRIBUS_1,
		    FUNC4(dev, PCIR_SECBUS_1, 1) << 8 |
		    FUNC4(dev, PCIR_PRIBUS_1, 1), 2);
		break;
	}

	FUNC1(dev);
	FUNC7(dev);
	return (FUNC6(dev));
}