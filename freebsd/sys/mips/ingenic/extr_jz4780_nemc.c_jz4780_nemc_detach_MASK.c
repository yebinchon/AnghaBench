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
struct jz4780_nemc_softc {int /*<<< orphan*/  res; int /*<<< orphan*/ * clk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct jz4780_nemc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4780_nemc_spec ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct jz4780_nemc_softc *sc = FUNC3(dev);

	FUNC0(dev);
	if (sc->clk != NULL)
		FUNC2(sc->clk);
	FUNC1(dev, jz4780_nemc_spec, sc->res);
	return (0);
}