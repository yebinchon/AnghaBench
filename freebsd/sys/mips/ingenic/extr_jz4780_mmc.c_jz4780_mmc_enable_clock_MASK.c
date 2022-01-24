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
struct TYPE_2__ {int /*<<< orphan*/  f_max; } ;
struct jz4780_mmc_softc {int /*<<< orphan*/  sc_clk; TYPE_1__ sc_host; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct jz4780_mmc_softc *sc)
{
	int err;

	err = FUNC1(sc->sc_dev, 0, "mmc", &sc->sc_clk);
	if (err == 0)
		err = FUNC0(sc->sc_clk);
	if (err == 0)
		err = FUNC3(sc->sc_clk, sc->sc_host.f_max, 0);
	if (err != 0)
		FUNC2(sc->sc_clk);
	return (err);
}