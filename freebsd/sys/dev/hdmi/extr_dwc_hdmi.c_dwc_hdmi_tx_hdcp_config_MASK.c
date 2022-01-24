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
typedef  int /*<<< orphan*/  uint8_t ;
struct dwc_hdmi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_A_HDCPCFG0 ; 
 int /*<<< orphan*/  HDMI_A_HDCPCFG0_RXDETECT_DISABLE ; 
 int /*<<< orphan*/  HDMI_A_HDCPCFG0_RXDETECT_MASK ; 
 int /*<<< orphan*/  HDMI_A_HDCPCFG1 ; 
 int /*<<< orphan*/  HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE ; 
 int /*<<< orphan*/  HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK ; 
 int /*<<< orphan*/  HDMI_A_VIDPOLCFG ; 
 int /*<<< orphan*/  HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH ; 
 int /*<<< orphan*/  HDMI_A_VIDPOLCFG_DATAENPOL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct dwc_hdmi_softc *sc)
{
	uint8_t de, val;

	de = HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH;

	/* Disable RX detect */
	val = FUNC0(sc, HDMI_A_HDCPCFG0);
	val &= ~HDMI_A_HDCPCFG0_RXDETECT_MASK;
	val |= HDMI_A_HDCPCFG0_RXDETECT_DISABLE;
	FUNC1(sc, HDMI_A_HDCPCFG0, val);

	/* Set polarity */
	val = FUNC0(sc, HDMI_A_VIDPOLCFG);
	val &= ~HDMI_A_VIDPOLCFG_DATAENPOL_MASK;
	val |= de;
	FUNC1(sc, HDMI_A_VIDPOLCFG, val);

	/* Disable encryption */
	val = FUNC0(sc, HDMI_A_HDCPCFG1);
	val &= ~HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK;
	val |= HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE;
	FUNC1(sc, HDMI_A_HDCPCFG1, val);
}