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
struct TYPE_2__ {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_mem_rid; } ;
struct dwc_hdmi_fdt_softc {TYPE_1__ base; int /*<<< orphan*/ * clk_hdmi; int /*<<< orphan*/ * clk_ahb; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dwc_hdmi_fdt_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct dwc_hdmi_fdt_softc *sc;

	sc = FUNC2(dev);

	if (sc->clk_ahb != NULL)
		FUNC1(sc->clk_ahb);
	if (sc->clk_hdmi != NULL)
		FUNC1(sc->clk_hdmi);

	if (sc->base.sc_mem_res != NULL)
		FUNC0(dev, SYS_RES_MEMORY,
		    sc->base.sc_mem_rid, sc->base.sc_mem_res);

	return (0);
}