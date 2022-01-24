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
struct smc_softc {int /*<<< orphan*/  smc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BSR ; 
 int BSR_BANK_MASK ; 
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MGMT ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct smc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_softc*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct smc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC6(device_t dev)
{
	struct smc_softc	*sc;
	uint32_t		val;

	sc = FUNC3(dev);

	FUNC1(sc);
	FUNC0((FUNC5(sc, BSR) & BSR_BANK_MASK) == 3,
	    ("%s: smc_mii_bitbang_read called with bank %d (!= 3)",
	    FUNC2(sc->smc_dev),
	    FUNC5(sc, BSR) & BSR_BANK_MASK));

	val = FUNC5(sc, MGMT);
	FUNC4(sc, MGMT, 2,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

	return (val);
}