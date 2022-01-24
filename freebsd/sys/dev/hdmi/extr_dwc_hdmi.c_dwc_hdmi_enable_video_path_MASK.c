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
struct dwc_hdmi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_FC_CH0PREAM ; 
 int /*<<< orphan*/  HDMI_FC_CH1PREAM ; 
 int /*<<< orphan*/  HDMI_FC_CH2PREAM ; 
 int /*<<< orphan*/  HDMI_FC_CTRLDUR ; 
 int /*<<< orphan*/  HDMI_FC_EXCTRLDUR ; 
 int /*<<< orphan*/  HDMI_FC_EXCTRLSPAC ; 
 int /*<<< orphan*/  HDMI_MC_CLKDIS ; 
 int HDMI_MC_CLKDIS_CECCLK_DISABLE ; 
 int HDMI_MC_CLKDIS_PIXELCLK_DISABLE ; 
 int HDMI_MC_CLKDIS_TMDSCLK_DISABLE ; 
 int FUNC0 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct dwc_hdmi_softc *sc)
{
	uint8_t clkdis;

	/*
	 * Control period timing
	 * Values are minimal according to HDMI spec 1.4a
	 */
	FUNC1(sc, HDMI_FC_CTRLDUR, 12);
	FUNC1(sc, HDMI_FC_EXCTRLDUR, 32);
	FUNC1(sc, HDMI_FC_EXCTRLSPAC, 1);

	/*
	 * Bits to fill data lines not used to transmit preamble
	 * for channels 0, 1, and 2 respectively
	 */
	FUNC1(sc, HDMI_FC_CH0PREAM, 0x0B);
	FUNC1(sc, HDMI_FC_CH1PREAM, 0x16);
	FUNC1(sc, HDMI_FC_CH2PREAM, 0x21);

	/* Save CEC clock */
	clkdis = FUNC0(sc, HDMI_MC_CLKDIS) & HDMI_MC_CLKDIS_CECCLK_DISABLE;
	clkdis |= ~HDMI_MC_CLKDIS_CECCLK_DISABLE;

	/* Enable pixel clock and tmds data path */
	clkdis &= ~HDMI_MC_CLKDIS_PIXELCLK_DISABLE;
	FUNC1(sc, HDMI_MC_CLKDIS, clkdis);

	clkdis &= ~HDMI_MC_CLKDIS_TMDSCLK_DISABLE;
	FUNC1(sc, HDMI_MC_CLKDIS, clkdis);
}