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
struct jz4780_dwc_otg_softc {scalar_t__ phy_clk; scalar_t__ otg_clk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct jz4780_dwc_otg_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct jz4780_dwc_otg_softc *sc;
	int err;

	err = FUNC2(dev);
	if (err != 0)
		return (err);

	sc = FUNC1(dev);
	if (sc->otg_clk)
		FUNC0(sc->otg_clk);
	if (sc->phy_clk)
		FUNC0(sc->phy_clk);
	return (0);
}