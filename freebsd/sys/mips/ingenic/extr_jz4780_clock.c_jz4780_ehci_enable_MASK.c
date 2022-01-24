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
struct jz4780_clock_softc {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_clock_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_clock_softc*) ; 
 int FUNC2 (struct jz4780_clock_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_clock_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  JZ_OPCR ; 
 int /*<<< orphan*/  JZ_SRBC ; 
 int /*<<< orphan*/  JZ_USBPCR ; 
 int /*<<< orphan*/  JZ_USBPCR1 ; 
 int OPCR_SPENDN1 ; 
 int PCR_DMPD1 ; 
 int PCR_DPPD1 ; 
 int PCR_OTG_DISABLE ; 
 int PCR_POR ; 
 int PCR_WORD_I_F0 ; 
 int PCR_WORD_I_F1 ; 
 int SRBC_UHC_SR ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jz4780_clock_softc* FUNC6 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  jz4780_clock_devclass ; 
 scalar_t__ FUNC7 (struct jz4780_clock_softc*) ; 

int
FUNC8(void)
{
	device_t dev;
	struct jz4780_clock_softc *sc;
	uint32_t reg;

	dev = FUNC5(jz4780_clock_devclass, 0);
	if (dev == NULL)
		return (-1);

	sc = FUNC6(dev);

	/*
	 * EHCI should use MPPL as a parent, but Linux configures OTG
	 * clock anyway. Follow their lead blindly.
	 */
	if (FUNC7(sc) != 0)
		return (-1);

	FUNC0(sc);

	/* Enable OTG, should not be necessary since we use PLL clock */
	reg = FUNC2(sc, JZ_USBPCR);
	reg &= ~(PCR_OTG_DISABLE);
	FUNC3(sc, JZ_USBPCR, reg);

	/* Do not force port1 to suspend mode */
	reg = FUNC2(sc, JZ_OPCR);
	reg |= OPCR_SPENDN1;
	FUNC3(sc, JZ_OPCR, reg);

	/* D- pulldown */
	reg = FUNC2(sc, JZ_USBPCR1);
	reg |= PCR_DMPD1;
	FUNC3(sc, JZ_USBPCR1, reg);

	/* D+ pulldown */
	reg = FUNC2(sc, JZ_USBPCR1);
	reg |= PCR_DPPD1;
	FUNC3(sc, JZ_USBPCR1, reg);

	/* 16 bit bus witdth for port 1*/
	reg = FUNC2(sc, JZ_USBPCR1);
	reg |= PCR_WORD_I_F1 | PCR_WORD_I_F0;
	FUNC3(sc, JZ_USBPCR1, reg);

	/* Reset USB */
	reg = FUNC2(sc, JZ_USBPCR);
	reg |= PCR_POR;
	FUNC3(sc, JZ_USBPCR, reg);
	FUNC4(1);
	reg = FUNC2(sc, JZ_USBPCR);
	reg &= ~(PCR_POR);
	FUNC3(sc, JZ_USBPCR, reg);

	/* Soft-reset USB */
	reg = FUNC2(sc, JZ_SRBC);
	reg |= SRBC_UHC_SR;
	FUNC3(sc, JZ_SRBC, reg);
	/* 300ms */
	FUNC4(300*hz/1000);

	reg = FUNC2(sc, JZ_SRBC);
	reg &= ~(SRBC_UHC_SR);
	FUNC3(sc, JZ_SRBC, reg);

	/* 300ms */
	FUNC4(300*hz/1000);

	FUNC1(sc);
	return (0);
}