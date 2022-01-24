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
struct dme_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DME_EPAR ; 
 int /*<<< orphan*/  DME_EPCR ; 
 int /*<<< orphan*/  DME_EPDRH ; 
 int /*<<< orphan*/  DME_EPDRL ; 
 int DME_TIMEOUT ; 
 int EPCR_EPOS ; 
 int EPCR_ERPRW ; 
 int EPCR_ERRE ; 
 struct dme_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dme_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg, int data)
{
	struct dme_softc *sc;
	int i;

	/* We have up to 4 PHY's */
	if (phy > 3)
		return (0);

	sc = FUNC1(dev);

	/* Send the register and data to write to the phy */
	FUNC3(sc, DME_EPAR, (phy << 6) | reg);
	FUNC3(sc, DME_EPDRL, data & 0xFF);
	FUNC3(sc, DME_EPDRH, (data >> 8) & 0xFF);
	/* Start the write */
	FUNC3(sc, DME_EPCR, EPCR_EPOS | EPCR_ERPRW);

	/* Wait for the data to be written */
	for (i = 0; i < DME_TIMEOUT; i++) {
		if ((FUNC2(sc, DME_EPCR) & EPCR_ERRE) == 0)
			break;
		FUNC0(1);
	}

	/* Clear the comand */
	FUNC3(sc, DME_EPCR, 0);

	return (0);
}