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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ sc_reg_shift; int /*<<< orphan*/ * sc_mem_res; scalar_t__ sc_mem_rid; int /*<<< orphan*/  sc_get_i2c_dev; int /*<<< orphan*/  sc_dev; } ;
struct dwc_hdmi_fdt_softc {int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_hdmi; TYPE_1__ base; scalar_t__ i2c_xref; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  i2c_xref ;
typedef  int /*<<< orphan*/  freq ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int ENXIO ; 
 int FUNC0 (scalar_t__,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct dwc_hdmi_fdt_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc_hdmi_fdt_get_i2c_dev ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct dwc_hdmi_fdt_softc *sc;
	phandle_t node, i2c_xref;
	uint32_t freq;
	int err;

	sc = FUNC5(dev);
	sc->base.sc_dev = dev;
	sc->base.sc_get_i2c_dev = dwc_hdmi_fdt_get_i2c_dev;
	err = 0;

	/* Allocate memory resources. */
	sc->base.sc_mem_rid = 0;
	sc->base.sc_mem_res = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->base.sc_mem_rid, RF_ACTIVE);
	if (sc->base.sc_mem_res == NULL) {
		FUNC6(dev, "Cannot allocate memory resources\n");
		err = ENXIO;
		goto out;
	}

	node = FUNC9(dev);
	if (FUNC0(node, "ddc", &i2c_xref, sizeof(i2c_xref)) == -1)
		sc->i2c_xref = 0;
	else
		sc->i2c_xref = i2c_xref;

	if (FUNC0(node, "reg-shift", &sc->base.sc_reg_shift,
	    sizeof(sc->base.sc_reg_shift)) <= 0)
		sc->base.sc_reg_shift = 0;

	if (FUNC3(dev, 0, "hdmi", &sc->clk_hdmi) != 0 ||
	    FUNC3(dev, 0, "ahb", &sc->clk_ahb) != 0) {
		FUNC6(dev, "Cannot get clocks\n");
		err = ENXIO;
		goto out;
	}
	if (FUNC0(node, "clock-frequency", &freq, sizeof(freq)) > 0) {
		err = FUNC4(sc->clk_hdmi, freq, CLK_SET_ROUND_DOWN);
		if (err != 0) {
			FUNC6(dev,
			    "Cannot set HDMI clock frequency to %u Hz\n", freq);
			goto out;
		}
	} else
		FUNC6(dev, "HDMI clock frequency not specified\n");
	if (FUNC2(sc->clk_hdmi) != 0) {
		FUNC6(dev, "Cannot enable HDMI clock\n");
		err = ENXIO;
		goto out;
	}
	if (FUNC2(sc->clk_ahb) != 0) {
		FUNC6(dev, "Cannot enable AHB clock\n");
		err = ENXIO;
		goto out;
	}

	return (FUNC8(dev));

out:

	FUNC7(dev);

	return (err);
}