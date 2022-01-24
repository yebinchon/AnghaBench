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
struct smc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 struct smc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  smc_mii_bitbang_ops ; 
 int /*<<< orphan*/  FUNC4 (struct smc_softc*,int) ; 

int
FUNC5(device_t dev, int phy, int reg)
{
	struct smc_softc	*sc;
	int			val;

	sc = FUNC2(dev);

	FUNC0(sc);

	FUNC4(sc, 3);

	val = FUNC3(dev, &smc_mii_bitbang_ops, phy, reg);

	FUNC1(sc);
	return (val);
}