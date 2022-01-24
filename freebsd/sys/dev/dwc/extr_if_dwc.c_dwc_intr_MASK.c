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
typedef  int uint32_t ;
struct dwc_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_STATUS ; 
 int DMA_STATUS_AIS ; 
 int DMA_STATUS_FBI ; 
 int DMA_STATUS_INTR_MASK ; 
 int DMA_STATUS_NIS ; 
 int DMA_STATUS_RI ; 
 int DMA_STATUS_TI ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_softc*) ; 
 int /*<<< orphan*/  INTERRUPT_STATUS ; 
 int FUNC2 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGMII_RGMII_SMII_CTRL_STATUS ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct dwc_softc *sc;
	uint32_t reg;

	sc = arg;

	FUNC0(sc);

	reg = FUNC2(sc, INTERRUPT_STATUS);
	if (reg)
		FUNC2(sc, SGMII_RGMII_SMII_CTRL_STATUS);

	reg = FUNC2(sc, DMA_STATUS);
	if (reg & DMA_STATUS_NIS) {
		if (reg & DMA_STATUS_RI)
			FUNC6(sc);

		if (reg & DMA_STATUS_TI) {
			FUNC8(sc);
			FUNC9(sc);
		}
	}

	if (reg & DMA_STATUS_AIS) {
		if (reg & DMA_STATUS_FBI) {
			/* Fatal bus error */
			FUNC4(sc->dev,
			    "Ethernet DMA error, restarting controller.\n");
			FUNC7(sc);
			FUNC5(sc);
		}
	}

	FUNC3(sc, DMA_STATUS, reg & DMA_STATUS_INTR_MASK);
	FUNC1(sc);
}